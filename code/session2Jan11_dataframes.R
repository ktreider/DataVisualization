#session 2

#---show function--------------------------------------------------------------
v <- c(10, 78, 10)

show(v+5)
v



#---adding vectors-------------------------------------------------------------
x <- c(1,2,3,4,5,6,7)
y <- c(10, 200)

x+y #will give you a warning. shorter vector is "recycled"



#---arithmetic operations------------------------------------------------------
#sum()
#prod()
#diff()
#min()
#max()

a <- c(11, 21, 33, 44, 58)
diff(a)
max(a)
min(a)



#---Other Mathematical Functions-----------------------------------------------
#abs()
#mean()
#median()
#range()
#sd()
#sum()



#---Compare Vectors------------------------------------------------------------

1==2 #false
1==1 #true

#but with vectors...
b <- c(1,2,3)
c <- c(1,5,3)
b==c #compare all elements

which(b != c) #which ele of b are not equal to c (answer: position 2)
which(b == c) #which ele of b are equal to c (answer: position 1 & 3)

b[1] == c[1] #compare specific element of vector
b[2] == c[2]



#---Matrices-------------------------------------------------------------------
#all elements must be same type

#matrix(vector *req, nrow, ncol, byrow, dimnames)

d <- matrix(1:12, nrow = 2, ncol = 6)
show(d)

show(d[2,]) #show rows
show(d[,3]) #show columns



#---Change name of columns/rows/ in a matrix-----------------------------------
#rownames, colnames

show(d)
rownames(d) <- c("First", "Second")
show(d)
colnames(d) <- c("1", "2", "3", "4", "5", "6")
show(d)


e <- matrix(1:7) #creates 7 rows, 1 column
show(e)



#---Matrix operations----------------------------------------------------------
#scalar operations
show(d)
show(d+5)
show(d-2)
show(d*3)



#---remove rows/columns of a matrix--------------------------------------------
#use negative indexes
show(d) 
f <- d[-2,] #remove second row 
show(f)



#---Arrays---------------------------------------------------------------------
g <- array(1:27, dim=c(3,3,3))
show(g)

#functions for both Arrays and Matrices
#ncol()
#nrow()
#length()
#dim()
#str() - structure

dim(g)

#show specific element of an array
#x[row-num, col-num, dim-num]
g[1,2,3] #show first row, second column number from the 3rd dimension



#---Accessing Files------------------------------------------------------------
getwd()
beginning <- load("./rawData/Beginning.Rdata")
show(beginning) #names of datasets

#not a data frame
show(head(rivers))
colnames(rivers)
row.names.data.frame(rivers)
is.data.frame(rivers)
typeof(rivers)
str(rivers)

#data frame
show(head(quakes))
colnames(quakes)
row.names.data.frame(quakes)
?quakes #information about quakes



#---Data Frames----------------------------------------------------------------
#extended notion of an array, can have multiple datatypes
#columns are the attributes
#rows are the instances

#data.frame(vector, vector, vector...)
?data.frame

#an example
id <- c(100, 120, 101, 102, 107) #sales id
lname <- c("Morris", "Johnson", "Smith", "Kennedy", "Urbano") #last name
city <- c("London", "Seattle", "New York", "Miami", "Boston") #city

salesPersonDF <- data.frame(id, lname, city)
show(salesPersonDF)
show(salesPersonDF[1,])

str(salesPersonDF)

#show an entire column
salesPersonDF$city

#rename columns
#x <- data.frame(new-col = old-vector1, ...)



#---example data frame---------------------------------------------------------
?cars #working with the cars dataframe
show(head(cars, 10))



#---Loading packages-----------------------------------------------------------
#install.packages("ggplot2")

#can also use attach() and detach()
library("ggplot2")

data(package="ggplot2") #display the datasets within the package



#---functions for dataframes---------------------------------------------------
#ncol()
#colnames() or names()
#... 

str(mpg)
mpg$class #entire column

#can also
attach(mpg)
class
detach(mpg)
class #will throw error

#---masked variable------------------------------------------------------------
#fix if a global variable has the same name
#use with()

with() 