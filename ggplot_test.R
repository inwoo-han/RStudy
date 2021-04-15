install.packages('ggplot2')
library(ggplot2)

str(airquality)

ggplot(airquality, aes(x=Day, y=Temp)) + geom_point(size = 3, color = 'blue')
ggplot(airquality, aes(x=Day, y=Wind)) + geom_point(size = 1, color = '14')
ggplot(airquality, aes(x=Wind)) + geom_bar(width = 0.5)
ggplot(airquality, aes(x=Temp)) + geom_bar(width = 0.5, color = 'red')

ggplot(airquality, aes(x=Day, y=Wind)) + geom_line() + 
  geom_point()


ggplot(mtcars, aes(x = factor(cyl))) + geom_bar(aes(fill = factor(gear))) + coord_polar()
ggplot(mtcars, aes(x = factor(cyl))) + geom_bar(aes(fill = factor(gear)))

ggplot(airquality, aes(x = Day, y = Temp, group = Day)) + geom_boxplot()
ggplot(airquality, aes(x = Day, y = Temp, group = Temp)) + geom_boxplot()

str(economics)

ggplot(economics, aes(x = date, y = psavert)) + geom_line() + 
  geom_abline(intercept = 12.18671, slope = -0.14)

ggplot(airquality, aes(x = Day, y = Temp)) + geom_point() + 
  geom_text(aes(label=Temp, vjust=0, hjust=0))

ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point() + 
  annotate('rect', xmin = 3, xmax = 4, ymin = 12, ymax = 21, alpha = 0.5, fill = 'skyblue')+
  annotate('segment', x=2.5, xend=3.7, y=10, yend=17, color='red', arrow=arrow())

ggplot(mtcars, aes(x=gear)) + geom_bar() + 
  labs(x = '기어수', y = '자동차수', title = '변속기 기어별 자동차수') + 
  theme_linedraw() + theme_gray()
           