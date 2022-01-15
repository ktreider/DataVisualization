#questions 2

#---create data frame----------------------------------------------------------
x <- 10:1
y <- -4:5
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacrosse",
       "Basketball", "Tennis", "Cricket", "Soccer")

df <- data.frame(x, y, q) #create the df
show(df)


#---Change the data frame------------------------------------------------------
str(df) #show the strucure
structure(df) #show the structure

#rename columns: x <- data.frame(new-col = old-vector1, ...)
df <- data.frame("Ranking" = x, "TV following" = y, "Sport" = q)
show(df)
head(df, 5) #show first n rows of df




#---Vector creation------------------------------------------------------------
a <- seq(from = 5, to = 50, by=5 )
show(a)

a[5] <- 100 #change position 5 to 100
show(a)

show(a[4:10]) #display positions 4 - 10


#---Matrix creation------------------------------------------------------------
b <- matrix(1:20, nrow = 4, ncol = 5, byrow = TRUE)
show(b)
show(b[2,4]) #show position [2,4]



#---Display mpg df-------------------------------------------------------------
library("ggplot2")
head(mpg, 15)
tail(mpg, 15)

#---Array creation-------------------------------------------------------------
c <- array(seq(from=2, length.out = 64, by=4), dim=c(4,4,4))
show(c)

#---scan()---------------------------------------------------------------------
buffTail <- scan()
10
1
37
5
12

show(buffTail)

gardenBee <- scan()
8
3
6
19
4

show(gardenBee)

redTail <- scan()
18
19
1
2
4

show(redTail)

honeyBee <- scan()
12
13
16
9
10

show(honeyBee)

carderBee <- scan()
8
27
6
32
23

show(carderBee)

beesDF <- data.frame(buffTail, gardenBee, redTail, honeyBee, carderBee)
show(beesDF)
str(beesDF) #show structure

#install.packages("tidyverse")
library(tidyverse)

as_tibble(beesDF)
str(beesDF) #show structure




