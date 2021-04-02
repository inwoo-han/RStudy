library(readxl)
m_history <- read_excel('C:/RStudy/RStudy/R04.02/Sample2_m_history.xlsx')
f_history <- read_excel('C:/RStudy/RStudy/R04.02/Sample2_f_history.xlsx')
View(m_history)
View(f_history)
# 데이터세트 세로 결합
exdata_bindjoin <- bind_rows(m_history, f_history)
View(exdata_bindjoin)
exdata_bindjoin <- bind_rows(f_history, m_history)
View(exdata_bindjoin)

exdata_bindjoin <- exdata_bindjoin %>% arrange(ID)
View(exdata_bindjoin)

ID <- c(1,2)
ADD <- c('서울', '부산')
SEX <- c('남','')
a = data.frame(ID,ADD,SEX)

ID <- c(3,4)
SEX <- c('남','여')
b = data.frame(ID, SEX)

bindjoin<- bind_rows(a, b)
View(bindjoin)
