install.packages('psych')
library(psych)


x1 <- c(1,2,3,4,5,6,100)
x1
mean(x1)
median(x1)

x2 <- c(1,2,3,4,5,100)
x2
mean(x2)
median(x2)
max(x2)
min(x2)
range(x2)

quantile(x2)
quantile(x2, probs = 0.25)
quantile(x2, probs = 0.5)
quantile(x2, probs = 0.75)
quantile(x2, probs = 0.8)

var(x2)
sd(x2)
kurtosi(x2)
skew(x2)