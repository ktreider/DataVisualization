#session 4. missed, watch video

#---Accessing txt Files?-------------------------------------------------------
getwd()
file <- "./rawData/Rallfun-v39.txt"
#data <- read.table(file,      # TXT data file indicated as string or full path to the file
           #header = FALSE,    # Whether to display the header (TRUE) or not (FALSE)
           #sep = "",          # Separator of the columns of the file
           #dec = ".")         # Character used to separate decimals of the numbers in the file
#head(data)


data <- source(file) #sources file to environment panel
data

#once this is working you can use 
#tmean(x, tr = 0.2) calculates trimmed mean
#idealf(x) computes the ideal fourth
#mad(x) computes MADN (not MAD)
#winmean() winsorized mean
#winvar() winsorized variance
#winse()std error
#winsd()



#---MAD & WIN------------------------------------------------------------------

#mean()
#median()
#sum()


#median absolute deviation (MAD) - detecting outliers
  #MADN = MAD/0.6745 OR MADN = 1.4826*MAD

#winsorized variance - useful for analysis using a trimmed mean

#MAD and winsor are measures of central variation



#---calc MAD-------------------------------------------------------------------
#compute sample median
#subtract median from each observation and take absolute value
#order in increasing order
#MAD is the median of the absolute values of the above step. MADN = MAD * 1.4826
#write a function to do this ^



#---calc Winsorized Variance---------------------------------------------------
#sort data in ascending order
#winsorize the data by 20% : 
#find g = floor(n*20)
#find g smallest values and replace them with the smallest of the values not trimmed
#find the g largest values and replace them with the largest of the values not trimmed

#install.packages("psych")
library(psych)
#winsor(x, trim = 0.2, na.rm=TRUE)
#winsor.mean()
#winsor.sd()
#winsor.var()



#---outliers-------------------------------------------------------------------
#an obs appears to deviate markedly from other observations in the sample
#typically extreme values and mistakes

#min, max, percentiles, boxplot (ggplot2), histogram (gglplot2), scatterplot (ggplot2)
#format techniques: Hampel filter, Grubbs'Test, Dixon and Rosner


#useful: summary()
summary(mtcars)


#---MAD median rule------------------------------------------------------------
#data is considered outlier if following condition is met: 
#abs(X-M)/MADN > 2.24 , where M is sample median



#---writing functions----------------------------------------------------------
#name, output, input
#NameOfFunction <- function(x) {
  #commands
  #return(variable to return)
#}


summationF <- function() {
  x <- 3
  y <- 5
  return(x+y)
}
summationF


summationF2 <- function(x, y) {
  return(x+y)
}
summationF2(3, 5)

summationF3 <- function(x, y) {
  return(x+y)
}
a <- 3
b <- 5
summationF3(a,b)


#dot-dot-dot arguments 
#adding FUN to arguments - to pass function as an arg to another funct (do not use parentheses)

#--conditional statements------------------------------------------------------
#conditional evaluation
#if(condition) {
  #instructions to be executed if condition is me 
#}

#switch statements

#for loop
#for ( your_index_vari in your_vector) {
  #instructions
#}

for(index in 1:10) {
  cat("Index:", index, '\n')
}


#next statement - skip instruction
for(index in 1:10) {
  if (index == 5){
    next
  }
  else {
  cat("Index:", index, '\n')
  }
}
#or use break statement

#nested loops