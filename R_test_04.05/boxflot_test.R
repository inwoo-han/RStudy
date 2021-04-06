library(readxl)
exdata1 <- read_excel('D:/RStudy/RStudy/R04.02/sample.xlsx')
View(exdata1)

boxplot(exdata1$Y17_CNT, exdata1$Y16_CNT)

boxplot(exdata1$Y17_CNT, exdata1$Y16_CNT, ylim=c(0, 60), main='boxplot', 
        names = c("17년건수","16년건수"))

boxplot(exdata1$Y17_CNT, exdata1$Y16_CNT, ylim=c(0, 60), main='boxplot', 
        names = c("17년건수","16년건수"), col = c('green','yellow'))


y1 = c(1,2,3,4,5,6,7,8,9,10,20,25)
boxplot(y1)
