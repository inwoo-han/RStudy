ID <- c(1,2,3,4,5)
SEX <- c('F','M','F','M','F')
data_ex <- data.frame(ID = ID, SEX = SEX)

save(data_ex, file = 'data_ex.rda')

load("D:/RStudy/RStudy/data_ex.rda")
View(data_ex)

write.csv(data_ex, file = 'D:/RStudy/RStudy/data_ex_csv.csv')
write.table(data_ex, file = 'D:/RStudy/RStudy/data_ex_txt.txt', quote = FALSE)

read.csv("D:/RStudy/RStudy/data_ex_csv.csv")
