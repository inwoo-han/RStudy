library(readxl)
exdata1 <- read_excel('D:/RStudy/RStudy/R04.02/sample.xlsx')
View(exdata1)


exdata1
stem(exdata1$AGE)

hist(exdata1$AGE)
hist(exdata1$AGE, xlim = c(0, 60), ylim = c(0, 5), main = 'AGE 분포')

install.packages('descr')
library(descr)

freq(exdata1$SEX, plot = T, main='성별(barplot)')

dist_sex <- table(exdata1$SEX)
dist_sex
barplot(dist_sex, main = '성별(barplot)')

barplot(dist_sex, ylim = c(0, 8), main = 'barplot', xlab = 'SEX', ylab = 'FREQUENCY', names = c('Female','Male'))

barplot(dist_sex, ylim = c(0, 8), main = 'barplot', xlab = 'SEX', ylab = 'FREQUENCY', names = c('Female','Male'), col = c('pink','navy'))
