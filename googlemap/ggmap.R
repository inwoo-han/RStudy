install.packages("devtools")
library(devtools)
install_github("dkahle/ggmap")
library(ggmap)
googleAPIkey = "AIzaSyCt_XUxKwxSoVcLwO-8lFdN-Zl_NESb1p0"
register_google(googleAPIkey)
gg_seoul <- get_googlemap("seoul", maptype = "terrain")
ggmap(gg_seoul)
