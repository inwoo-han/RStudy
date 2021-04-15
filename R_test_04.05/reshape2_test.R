library(reshape2)

install.packages('extrafont')
library(extrafont)
font_import()


head(airquality)

names(airquality) <- tolower(names(airquality))
head(airquality)
View(airquality)

melt_test <- melt(airquality)
head(melt_test)
tail(melt_test)
View(melt_test)

melt_test2 <- melt(airquality, id.vars = c('month', 'wind'), measure.vars = 'ozone')
head(melt_test2)
View(melt_test2)

aq_melt <- melt(airquality, id=c('month','day'), na.rm=TRUE)
head(aq_melt)
View(aq_melt)

aq_dcast <- dcast(aq_melt, month+day ~ variable)
View(aq_dcast)

acast(aq_melt, day ~ month ~ variable)
acast(aq_melt, month ~ variable, mean)

#remove(airquality)
