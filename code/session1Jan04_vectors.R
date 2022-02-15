#code files
#session 1

#test vector from the book
factor(x=c("High School", "College", "Masters", "Doctorate"), levels=c("High School", "College", "Masters", "Doctorate"), ordered = TRUE)

#---get working directory------------------------------------------------------
getwd()



#---introductions--------------------------------------------------------------
#test algebra
3*(4+9)^3 -12

#a vector is a collection of things - of the same type 

# store variables with the assignment operator: <-
# with the variable name on the left and the value on the right
# start with alphabetic characters
x <- c(1,2,3)
x

values1 <- 12 
values1



#---forming vectors------------------------------------------------------------
myFirstVector <- c(1,2,3,4,5) #combine operator, combines individual vectors
myFirstVector 

y <- c("Hello", "World")
y

is.vector(myFirstVector) #boolean values

v <- c("Katie")
is.vector(v)

z <- c("Katie", 55)
z #55 is converted to a string
is.numeric(z)

vari <- paste("Katie", "is typing")
vari
length(vari)

#if a numeric vector is combined with a character vector- R converts to character
example <- c(5, 10, "15", "20")
example #displays all character vectors 
is.character(example)



#---decimals-------------------------------------------------------------------
#decimals in R - called double
is.double(2.0)

j <- 2L #to assign integer add L
is.integer(j)

k <- c(2, 9.78)
is.integer(k)
is.double(k)



#---displaying values----------------------------------------------------------
#if you want more information about a variable, there are some functions
val <- 15
show(val)

library(dplyr) #load library, only need to do once. top of file
glimpse(val) #needs dplyr

str(val) #more information about variable

structure(val)



#---sequence operator----------------------------------------------------------
m <- 5:20
m
is.integer(m)

n <- c(1,2,3:7)
n

o <- 1.5:33.8 #increments by 1
o 


#---form vector with seq-------------------------------------------------------
#seq(from = initial-value, to= final-value, by = increment-value)

p <- seq(from = 1, to = 30, by=2 )
p

q <- 1:5559
q
head(q) #shows first 6 values
tail(q) #shows last 6 values

head(q, n=20)
tail(q, n=250)

r <- seq(from = 1.3, to = 10, by= 1.5)
r

#length.out spaces the numbers into that many integers as evenly as possible
s <- seq(from = 1.3, to = 10, length.out = 10) 
s


#---scan function--------------------------------------------------------------
# t <- scan()
# 1: 1
# 2: 2
# 3: 5 6 7 8 9
# 8: 1

#umm not sure what he was doing

#scan(what = "char")
# t <- scan(what = "char", sep=",")
# 1: hello,my,friend,i,am,bored





rep(c(1,2,3), each = 5)
rep(c(1,2,3), times = 5 )


u <- 1:15
u
u[-(1:3)] #show the vector minus the first three values
