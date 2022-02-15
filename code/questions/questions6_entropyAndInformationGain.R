#questions 6

library(tidyverse)
library(C50) #create tree using c5.0 function
library(openxlsx)


file <- "./rawData/loan.xlsx"
loanDf <- read.xlsx(xlsxFile = file, sheet = 1, startRow=1, 
                    skipEmptyRows = TRUE, rows=0:16, colNames=TRUE, rowNames=TRUE)
show(loanDf)
str(loanDf)

loanDf$loan <- as.factor(loanDf$loan)
loanDf$credit <- as.factor(loanDf$credit)
loanDf$house <- as.factor(loanDf$house)
loanDf$job <- as.factor(loanDf$job)
loanDf$age <- as.factor(loanDf$age)

tr <- C5.0(loan ~ credit + house + job + age, data = loanDf)
plot(tr)


#---ENTROPY & IG----------------------------------------------------------------
#entropy(parent)[6,9]
#entropy(age) => entropy(young)[3,2], entropy(middle)[2,3], entropy(old)[1,4]
#entropy(job) => entropy(true)[5,0]=0, entropy(false)[6,4]
#entropy(house) => entropy(yes)[6,0]=0, entropy(no)[6,3]
#entropy(credit) => entropy(fair)[4,1], entropy(good)[2,4], entropy(excellent)[4,0]=0

#calculate: IG(parent, children) = parent-entropy - [pi * entropy(p1) + ... ]

#WANT: IG(parent, age), IG(parent, job), IG(parent, house), IG(parent, credit)

#code followed from https://rstudio-pubs-static.s3.amazonaws.com/455435_30729e265f7a4d049400d03a18e218db.html


#compute entropy
entropy <- function(target) {
  freq <- table(target)/length(target)
  #vectorize
  vec <- as.data.frame(freq)[,2]
  #drop 0 to avoid NaN resulting from log2
  vec<-vec[vec>0]
  #compute entropy
  -sum(vec * log2(vec))
}
#entropy(loanDf$age)


#returns IG for categorical variables
#where feature is the child and target is what you are segmenting 
#with respect to (in this case whether or not a loan is approved)
infoGain <-function(data, feature, target){
  
  #use dplyr to compute e (entropy) and p (prob) for each value of the feature
  cleaned_data <- data %>% 
    group_by_at(feature) %>% 
    summarise(e = entropy(get(target)),
              n = length(get(target)))
  
  #compute entropy for the parent
  parent_ent <- entropy(data[,target])
  #calculate p for each value of feature
  cleaned_data$p <- cleaned_data$n/nrow(data)
  #compute IG
  IG <- parent_ent - sum(cleaned_data$p*cleaned_data$e)
  
  return(IG)
}
infoGain(loanDf, 'age', 'loan')
infoGain(loanDf, 'job', 'loan')
infoGain(loanDf, 'house', 'loan')
infoGain(loanDf, 'credit', 'loan')




