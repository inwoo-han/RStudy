library(readxl)
library(writexl)
library(dplyr)
exdata1 <- read_excel('c:/RStudy/RStudy/R04.02/sample.xlsx')
exdata1 <- rename(exdata1, Y17_AMT = AMT17, Y16_AMT = AMT16)



exdata1 %>% arrange(AGE)

exdata1 %>% arrange(desc(Y17_AMT))

exdata1 %>% arrange(desc(ID))

exdata1 %>% arrange(AGE, desc(Y17_AMT))
                    
exdata1 %>% summarise(TOT_Y17_AMT = sum(Y17_AMT))
exdata1 %>% summarise(TOT_ID = sum(ID))

exdata1 %>% group_by(AREA) %>% summarise(SUM_Y17_AMT = sum(Y17_AMT))

exdata1 %>% group_by(SEX) %>% summarise(SUM_Y17_AMT = sum(Y17_AMT))
