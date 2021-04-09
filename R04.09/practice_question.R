library(writexl)
library(readxl)
library(dplyr)
library(reshape2)

CLASS<-c('class1','class1','class1','class1','class1','class2','class2','class2','class2','class2','class3','class3','class3','class3','class3')
ID<-c(1,2,3,4,5,1,2,3,4,5,1,2,3,4,5)
MATHMATICS<-c(50, 90, 95, 60, 80, 100, 90, 65, 75, 50, 80, 55, 70, 65, 90)
ENGLISH<-c(50, 80, 100, 60, 80, 90, 70, 80, 75, 45 ,85, 55, 80, 55, 75)

middle_mid_exam <- data.frame(CLASS, ID, MATHMATICS, ENGLISH)

write_xlsx(middle_mid_exam, path='C:/RStudy/RStudy/R04.09/middle_mid_exam.xlsx')

#1
middle_mid_exam <- read_xlsx('C:/RStudy/RStudy/R04.09/middle_mid_exam.xlsx')
middle_mid_exam

#2
MATHMATICS <- middle_mid_exam %>% select(CLASS, ID, MATHMATICS)
MATHMATICS <- dcast(MATHMATICS, ID ~ CLASS)
MATHMATICS
ENGLISH <- middle_mid_exam %>% select(CLASS, ID, ENGLISH)
ENGLISH <- dcast(ENGLISH, CLASS ~ ID) # 데이터, 행 ~ 열

#3
middle_mid_exam %>% group_by(CLASS) %>% summarise(sum_MATH = sum(MATHMATICS), mean_MATH = mean(MATHMATICS))
math_class <- group_by(middle_mid_exam, CLASS)
summarise(math_class, sum_MATH = sum(MATHMATICS), mean_MATH = mean(MATHMATICS))

eng_class <- group_by(middle_mid_exam, CLASS)
summarise(eng_class, sum_ENG = sum(ENGLISH), mean_ENG = mean(ENGLISH))

#4
math_filter <- filter(MATHMATICS, class1>=80) %>% summarise(n())
math_filter
colnames(math_filter) <- c('학생 수')
math_filter


#5
middle_mid_exam
arrange(middle_mid_exam, desc(MATHMATICS), ENGLISH)

#6
middle_mid_exam %>% filter(MATHMATICS>=80, ENGLISH>=85) %>% summarise(n())
