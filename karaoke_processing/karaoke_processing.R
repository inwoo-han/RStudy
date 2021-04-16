library(readxl)
kr <- read_excel("D:/RStudy/RStudy/karaoke_processing/data/노래방_가공.xlsx")

addr <- substr(kr$소재지전체주소, 8, 12)
head(addr)


addr_num <- gsub("[0-9]", "", addr)
head(addr_num)
addr_trim <- gsub(" ", "", addr_num)
head(addr_trim)

library(dplyr)

addr_count <- data.frame(table(addr_trim))
addr_count <- addr_trim %>% table() %>% data.frame()
head(addr_count)

library(treemap)

treemap(addr_count, index="addr_trim", vSize = "Freq", title = "오산시 동별 노래방 분포")

arrange(addr_count, desc(Freq))%>%head()
