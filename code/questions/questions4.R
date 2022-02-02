#questions 4

library(tidyverse)
library(psych) #for winsorized functions


#---finding outliers-----------------------------------------------------------
outliers <- function(x) {
  #data is considered outlier if following condition is met: 
  #abs(X-M)/MADN > 2.24 , where M is sample median
  
  numerator <- abs(x - median(x))
  #print(sort(numerator))
  
  mad <- median(numerator)
  print(paste("Mad:", mad))
  
  madn <- mad * 1.4826
  print(paste("Madn:", madn))
  
  outli <- c()
  for(num in x) {
    rule <- round(sort(abs(num-median(x))) / madn, 2)
    if (rule > 2.24) {
      outli <- append(outli, num)
    }
    
  }
  cat("Outliers detected:", outli, "\n")
  
}
vector <- c(1, 5, 12, 20, 121, 132, 123,131, 132, 135, 140, 143, 144, 145, 151, 119, 133, 134, 130 ,200, 50) 
outliers(vector)
#boxplot.stats(vector)$out #outliers

#---trimmed mean---------------------------------------------------------------
file <- "./rawData/Rallfun-v39.txt"
data <- source(file) #sources file to environment panel

bpm <- c(80, 85, 81, 75, 77, 79, 74, 86, 79, 55, 82, 89, 73, 79, 83, 82, 88, 79, 77, 81, 82)
tmean(bpm)


#---Winsorized mean------------------------------------------------------------
gainInGrams <- c(90, 76, 90, 64, 86, 51, 72, 90, 95, 78)

#20% trimmed mean
tmean(gainInGrams)

#20% winsorized variance
winsor.var(gainInGrams)
winvar(gainInGrams)

