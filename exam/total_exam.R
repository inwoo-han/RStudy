# readxl 패키지 설치
install.packages("readxl")

# readxl 패키지 로드
library(readxl)

# mid_exam 엑셀 파일 불러오기
mid_exam <- read_excel("D:/RStudy/exam/mid_exam.xlsx")

#불러운 데이터 확인
View(mid_exam)

# dplyr 패키지 설치
install.packages("dplyr")

# dplyr 패키지 로드
library(dplyr)

#mid_exam 의 MATH,ENG 컬럼명 변경
mid_exam <- rename(mid_exam, MATH_MID = MATH , ENG_MID = ENG)

# final_exam 엑셀 파일 불러오기
final_exam <- read_excel("d:/RStudy/exam/final_exam.xlsx")

# final_exam 의 MATH,ENG 컬럼명 변경
final_exam <- rename(final_exam, MATH_FINAL = MATH, ENG_FINAL = ENG)

# mid + final exam 합치기
total_exam <- inner_join(final_exam,mid_exam, by = "ID")

# 통합 성적의 개인별 수학 평균
total_exam$MATH_AVG <- c((total_exam$MATH_FINAL+total_exam$MATH_MID)/2)

# 통합 성적의 개인별 영어 평균
total_exam$ENG_AVG <- c((total_exam$ENG_FINAL+total_exam$ENG_MID)/2)

# 통합 성적의 개인별 전체 평균
total_exam$TOTAL_AVG <- c((total_exam$MATH_MID+total_exam$MATH_FINAL+total_exam$ENG_MID+total_exam$ENG_FINAL)/4)

# 통합 성적에서 수학,영어 점수의 평균 구하기                          
mean(total_exam$MATH_AVG)
mean(total_exam$ENG_AVG)

# 통합 성적에서 중간고사 수학 성적 80이상 , 중간고사 영어 성적 90 이상인 학생을 선별

# 1
total_exam %>% filter(MATH_MID >= 80 & ENG_MID >= 90)

# 2
filter(total_exam,MATH_MID >= 80 & ENG_MID >= 90)

