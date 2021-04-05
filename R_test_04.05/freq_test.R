library(readxl)
exdata1 <- read_excel('D:/RStudy/RStudy/R04.02/sample.xlsx')
View(exdata1)


install.packages('descr')
library(descr)

freq_test <- freq(exdata1$AREA, plot = T)
freq_test
