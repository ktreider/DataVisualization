#questions 3

#---creating new cols----------------------------------------------------------
library(tidyverse)
head(iris)

iris.area <- iris %>%
  mutate(Sepal.Area = Sepal.Length * Sepal.Width) %>%
  mutate(Petal.Area = Petal.Length * Petal.Width)
show(head(iris.area, 12))



#---conversion of units--------------------------------------------------------
head(mpg)
MtoK <- 1.61 #miles to kilometers 1mi=1.61km
GtoL <- 3.8  #gallon to liter 1gal=3.8l
#mpg > km/l = 1.61 / 3.8 - but want  l/km so reciprocal
factor <- 100 * (GtoL / MtoK)

mpg2 <- mpg %>%
  mutate(EuroCty = factor / cty) %>%
  mutate(EuroHwy = factor / hwy)
show(mpg2)



#---avg weight with filter-----------------------------------------------------
head(chickwts)

avgWeight <- chickwts %>%
  filter(feed == "horsebean") %>% #select horsebean fed chicks
  summarize(avgWeight = mean(weight)) #calc avg weight
show(avgWeight)



#---mtcars meanDisp------------------------------------------------------------
head(mtcars)

meanDisp <- mtcars %>%
  group_by(cyl) %>% #group by number of cylinders
  summarize(meanDisp = mean(disp)) #calc mean displacement 
show(meanDisp)



#---change names, access rows--------------------------------------------------
#rename cols
head(cars)
?cars

newCars <- cars %>%
  rename("Speed (mph)" = speed, "Stopping Distance (ft)" = dist)
head(newCars)

#select one row
show(newCars[1,]) #select first row using indexing
#or
show(newCars %>% slice(5)) #select the 5th row using slice()





      