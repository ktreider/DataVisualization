#questions1

#---find working dir-----------------------------------------------------------
getwd()

#---algebra--------------------------------------------------------------------
(5*3+2)^2/(7-2)
(3*(4-2)^2-1)^3

#---floor & ceiling functions--------------------------------------------------
x <- 2789.1234893
ceiling(x)
floor(x)
is.integer(ceiling(x))
is.integer(floor(x))
is.integer(x)

#---rounding-------------------------------------------------------------------
a <-  round(x, digits=7)
is.integer(a)

#---vector algebra-------------------------------------------------------------
b <- c(-20, -15, 8, 12, 9, 2, 23, 19)
c <- sum(b) / length(b)
c

#---sum positive values only---------------------------------------------------
sum(b[b>0])

#---range----------------------------------------------------------------------
d <- c(23, 18, 29, 22, 24, 27, 28, 19, 28, 23)
range(d)
min(d)
max(d)

#---sum excluding a value------------------------------------------------------
x <- c(1, 8, 2, 6, 3, 8, 5, 5, 5, 5, 2)
e <- sum(x[-(which(x==2))]) #sum the values of x, excluding where x=2
e

g <- sum(x[x!=2]) #better practice!
g

#OR find the positions first, then sum excluding
which(x==2)
f <- sum(x[-(c(3,11))])
f





