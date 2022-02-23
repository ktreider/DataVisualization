#session 7

#---control structures---------------------------------------------------------

#if (condition) {
#instructions
#}

#if else
#while loops
#for loops
#switch

#simplified ifelse statement:
#ifelse(condition, ifTRUE, ifFALSE)

#---ways to print--------------------------------------------------------------
x <- 5.123
sprintf("The number is: %1.0f", x)
#%s string, %f doubles

# error: print("Hello", "There")
print(paste("Hello", "There", 55))


cat("Hi", "Bye", 40)




#---example function-----------------------------------------------------------
stockOpt <- function(stockStatus) {
  if(stockStatus == "down") {
    return("Sell")
  }
}
opt <- stockOpt("down")
print(opt)














