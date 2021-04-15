library(dplyr)

View(mtcars)

filter(mtcars, cyl == 4)

filter(mtcars, cyl >= 4 & mpg > 20)

head(arrange(mtcars, wt, gear))

head(arrange(mtcars, desc(wt), desc(drat)))
head(arrange(mtcars, desc(wt), drat))

head(select(mtcars, am, gear))

head(mutate(mtcars, years = '1974'))
head(mutate(mtcars, mpg_rank = rank(mpg)))

distinct(mtcars, cyl)
distinct(mtcars, gear)
distinct(mtcars, cyl, gear)

summarise(mtcars, cyl_mean = mean(cyl), cyl_min = min(cyl), ctl_max = max(cyl))

gr_cyl <- group_by(mtcars, cyl)
gr_cyl
summarise(gr_cyl, n_distinct(gear))

sample_n(mtcars, 10)
sample_frac(mtcars, 0.2)

group_by(mtcars, cyl) %>% summarise(n())
mp_rank <- mutate(mtcars, mpg_rank=rank(mpg))
arrange(mp_rank, mpg_rank)
