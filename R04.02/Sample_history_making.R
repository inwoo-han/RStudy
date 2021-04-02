library(writexl)
library(readxl)
library(dplyr)

ID <- c(2,3,5,9)
SEX <- c('M','M','M','M')
AGE <- c(40,50,27,20)
AREA <- c('경기','서울','서울','인천')
AMT17 <- c('450,000','400,000','845,000','930,000')
Y17_CNT <- c(25,8,30,4)
AMT16 <- c('700,000','125,000','760,000','250,000')
Y16_CNT <- c(30,3,28,2)

Sample2_m_history <- data.frame(ID,SEX,AGE,AREA,AMT17,Y17_CNT,AMT16,Y16_CNT)

View(Sample2_m_history)
write_xlsx(Sample2_m_history, path = 'C:/RStudy/RStudy/R04.02/Sample2_m_history.xlsx')

ID <- c(1,3,6,7,8,10)
SEX <- c('F','F','F','F','F','F')
AGE <- c(50, 28, 23, 56, 47, 38)
AREA <- c('서울','제주','서울','경기','서울','경기')
AMT17 <- c('1,300,000', '275,000', '42,900', '150,000', '570,000', '520,000')
Y17_CNT <- c(50, 10, 1, 2, 10, 17)
AMT16 <- c('100,000', '50,000', '300,000', '130,000', '400,000', '550,000')
Y16_CNT <- c(40, 5, 6, 2, 7, 16)

Sample2_f_history <- data.frame(ID,SEX,AGE,AREA,AMT17,Y17_CNT,AMT16,Y16_CNT)

View(Sample2_f_history)
write_xlsx(Sample2_f_history, path = 'C:/RStudy/RStudy/R04.02/Sample2_f_history.xlsx')

