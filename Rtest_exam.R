install.packages('readxl')
library(readxl)

mid_exam <- read_excel('D:/RStudy/exam/mid_exam.xlsx')
View(mid_exam)

install.packages('dplyr')
library(dplyr)

mid_exam <- rename(mid_exam, MATH_MID=MATH, ENG_MID=ENG)

final_exam <- read_excel('D:/RStudy/exam/final_exam.xlsx')
View(final_exam)

final_exam <- rename(final_exam, MATH_FINAL = MATH, ENG_FINAL = ENG)

total_exam <- inner_join(final_exam, mid_exam, by='ID')
View(total_exam)

total_exam$MATH_AVG <- c((total_exam$MATH_FINAL+total_exam$MATH_MID)/2)

total_exam$ENG_AVG <- c((total_exam$ENG_FINAL+total_exam$ENG_MID)/2)

total_exam$TOTAL_AVG <- c((total_exam$ENG_AVG + total_exam$MATH_AVG)/2)
total_exam$TOTAL2_AVG <- c((total_exam$MATH_MID+total_exam$MATH_FINAL+total_exam$ENG_MID+total_exam$ENG_FINAL)/4) 

mean(total_exam$TOTAL_AVG)
mean(total_exam$TOTAL2_AVG)
mean(total_exam$MATH_AVG)
mean(total_exam$ENG_AVG)

total_exam %>% filter(MATH_MID>=80 & ENG_MID>=90)

filter(total_exam, MATH_MID >= 80 & ENG_MID>=90)
