library(readxl)
library(dplyr)

dustdata <- read_excel("D:/RStudy/RStudy/finedust_processing/dustdata.xlsx")
View(dustdata)
str(dustdata)

dustdata_anal <- dustdata %>% filter(area %in% c("성북구","중구"))
View(dustdata_anal)

count(dustdata_anal, yyyymmdd) %>% arrange(desc(n))
count(dustdata_anal, area) %>% arrange(desc(n))

dust_anal_area_sb <- subset(dustdata_anal, area=="성북구")
dust_anal_area_jg <- subset(dustdata_anal, area=="중구")

dust_anal_area_sb
dust_anal_area_jg

install.packages("psych")
library(psych)

describe(dust_anal_area_sb$finedust)

describe(dust_anal_area_jg$finedust)

boxplot(dust_anal_area_sb$finedust, dust_anal_area_jg$finedust, main="finedust_compare", xlab="AREA", names = c("성북구", "중구"), ylab="FINEDUST_PM", col = c("blue","green"))

t.test(data = dustdata_anal, finedust ~ area, var.equal = T)
