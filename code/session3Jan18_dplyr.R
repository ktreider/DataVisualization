#session 3

#install.packages("NAME")

#---tibbles-------------------------------------------------------------------
#tibble(vector1, vector2, ... , vectorN)
#class = tbl, tbl_df, data.frame

library(ggplot2)
str(mpg)

#---tibble to data.frame : use as.X family
mpgAsDF <- as.data.frame(mpg)
str(mpgAsDF)

#need tidyverse to define
library(tidyverse)
#making a tibble
a <- tibble(1:5, c("a", "b", "c", "d", "e"))
show(a)

#making a tibble
v1 <- c(1, 2)
v2 <- c(3, 4)
b <- tibble(v1, v2)
show(b)



#---dplyr functions---------------------------------------------------------------
#select() -subset of cols
#filter() - subset of row
#arrange() - sort asc or desc
#mutate() - add/mod existing cols
#join() - combine vals from 2 diff df/tibbles
#slice() - range of rows
#group_by 
library(dplyr)


#---select() & filter()-------------------------------------------------------
#select gives columns, filter gives rows
head(select(iris, Sepal.Length, Petal.Length), n=6)
print(mpg, n=100) #random

mpg %>% #pipe operator
  select(model, displ)



#---using dplyr----------------------------------------------------------------
mpg %>%
  select(model, year, displ) %>%
  head(n=3)

glimpse(msleep)
msleep %>%
  count(order, sort=TRUE)



#---tally() & add_count()------------------------------------------------------
#tally() only takes a df as an argument
#add_count() takes variable as arg and adds a col with the num of observations

msleep %>%
  select(genus, order) %>%
  add_count(order)



#--- group_by()----------------------------------------------------------------
#aggregates a variable or variables as "a group". df not altered
#converts df to tibble

by_cyl <- group_by(mtcars, cyl)
summarise(by_cyl, Mdisp = mean(disp), Mhp = mean(hp)) %>% show



#---mutate()-------------------------------------------------------------------
#creates new columns - typically based off other cols (functions w/ other cols)
msleep %>%
  select(name, sleep_total) %>%
  mutate(sleepTotalMin = sleep_total * 60)
#not saved to the df, need to save to variable (no pipe operator)



#---rename()-------------------------------------------------------------------
#rename variables (columns)
mySleep <- (msleep %>% rename(Weight = bodywt) %>% glimpse) 



