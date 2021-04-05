library(readxl)
jeju_y17_history <- read_excel('D:/RStudy/RStudy/R_test_04.05/Sample4_y17_history.xlsx')
jeju_y16_history <- read_excel('D:/RStudy/RStudy/R_test_04.05/Sample5_y16_history.xlsx')

install.packages('dplyr')
library(dplyr)

View(jeju_y17_history)
View(jeju_y16_history)

bind_col <- left_join(jeju_y17_history, jeju_y16_history, by = 'ID')
View(bind_col)

bind_col_inner <- inner_join(jeju_y17_history, jeju_y16_history, by = 'ID')
View(bind_col_inner)

bind_col_full <- full_join(jeju_y17_history, jeju_y16_history, by = 'ID')
View(bind_col_full)


x1 <- c(1, 2, NA, 4, 5)
x1

x1*10

is.na(x1)

sum(x1, na.rm = T)
