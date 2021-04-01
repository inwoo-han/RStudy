ID <- c('1','2','3','4','5')
MID_EXAM <- c(10,25,100,75,30)
CLASS <- c('1반','2반','3반','4반','5반')
example_test <- data.frame(ID, MID_EXAM, CLASS)
example_test
View(example_test)

install.packages('readxl')
library(readxl)

excel_data_ex <- read_excel('D:/RStudy/RStudy/data_ex.xls')
excel_data_ex
View(excel_data_ex)

ex_data <-read.table('D:/Rstudy/RStudy/data_ex.txt', header=TRUE)
View(ex_data)

ex1_data <-read.table('D:/Rstudy/RStudy/data_ex1.txt', sep = ',', header=TRUE)
View(ex1_data)

varname <- c('ID','SEX','AGE','AREA')
ex2_data <- read.table('D:/RStudy/RStudy/data_ex2.txt', sep=',', col.names = varname)
View(ex2_data)
