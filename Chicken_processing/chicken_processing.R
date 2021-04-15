library("readxl")
ck <- read_excel("D:/RStudy/RStudy/Chicken_processing/data/치킨집_가공.xlsx")
head(ck)
# View(ck)
# 소재지전체주소 열에서 11번째 글자부터 16번째 글자 앞까지 추출
addr <- substr(ck$소재지전체주소, 11, 16)
head(addr)


addr_num <- gsub("[0-9]", "", addr)
addr_trim <- gsub(" ", "", addr_num)
# View(addr_trim)
head(addr_trim)

library("dplyr")

# 도수분포표 작성 후 데이터 프레임으로 변환
addr_count <- addr_trim %>% table() %>% data.frame()
# addr_count1 <- data.frame(table(addr_trim))

head(addr_count)
# head(addr_count1)

install.packages("treemap")
library(treemap)

# 동이름 열(.)과 치킨집 개수 열(Freq)로 트리맵 표현현
treemap(addr_count, index = ".", vSize = "Freq", title = "서대문구 동별 치킨집 분포")

# 내림차순으로 실제 데이터 확인
arrange(addr_count, desc(Freq)) %>% head()
