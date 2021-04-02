ID <- c('1','2','3','4','5')
NAME <- c('유정','유나','은지','민영','혜란')
AGE <- c(29,27,28,30,27)
GROUP <- c(2,2,2,2,1)

brave_girls <- data.frame(ID, NAME, AGE, GROUP)
View(brave_girls)

install.packages('writexl')
library(writexl)

write_xlsx(brave_girls, path='c:/RStudy/brave_girls.xlsx')

install.packages('readxl')
library(readxl)

brave_girls = read_excel('c:/RStudy/brave_girls.xlsx')
View(brave_girls)

install.packages("dplyr")
library(dplyr)

brave_girls = rename(brave_girls, 기수=GROUP)
View(brave_girls)

brave_girls %>% filter(기수==2)

brave_girls2 <- brave_girls %>% filter(기수==2)
View(brave_girls2)
brave_girls2$DEBUT_AGE <- c(brave_girls2$AGE-5)
View(brave_girls2)
