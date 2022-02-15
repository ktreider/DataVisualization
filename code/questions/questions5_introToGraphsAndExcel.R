#questions 5

#---bar plots -----------------------------------------------------------------
#install.packages("vcd")
library(vcd)
head(Arthritis, 6)
counts <- table(Arthritis$Improved)
barplot(counts, main="Rheumatoid Arthritis Study", xlab = "Improvement", 
        ylab = "Frequency")



#---horizontal barplot---------------------------------------------------------
barplot(counts, main="Rheumatoid Arthritis Study", ylab = "Improvement",
        xlab = "Frequency", horiz=TRUE)



#---pie chart------------------------------------------------------------------
labels <- c("UK", "US", "Australia", "Germany", "France")
percentages <- c(10, 12,4, 16, 8)

pie(percentages, labels=labels, main="Percentage of People 
    Working after 65 Years Old")



#---histogram------------------------------------------------------------------
#summary(mtcars$mpg)
mpgCut <- cut(mtcars$mpg, breaks=12, right=FALSE, ordered_result=TRUE)
head(mpgCut)
mpgFreq <- table(mpgCut)
show(mpgFreq)
cbind(mpgFreq)

#and these are the breaks I decided upon to get 12 columns:
brks <- c(10.4, 12.4, 14.3, 16.3, 18.2, 20.2, 22.1, 24.1, 26.1, 28, 30, 31.9, 34)
hist(mtcars$mpg, main="Histograms of mtcars with 12 columns", 
     col="red", breaks=brks, xlim= c(min(brks), max(brks)), xlab="Miles Per Gallon", ylab = "Frequencies")
lines(density(mtcars$mpg), lty="dotted", lwd=3) #kernel density function

#or this with 12 auto breaks
#hist(mtcars$mpg, main="Histograms of mtcars with 12 columns", 
#     col="red", breaks=12, xlab="Miles Per Gallon")
#lines(density(mtcars$mpg), lty="dotted", lwd=3)



#---reading budget.xslx--------------------------------------------------------
#install.packages("openxlsx")
library(openxlsx)
file <- "./rawData/Budget.xlsx"
budget <- read.xlsx(xlsxFile = file, sheet = 1, startRow=3, 
                    skipEmptyRows = TRUE, rows=3:7, colNames=TRUE, rowNames=TRUE)
head(budget)
str(budget)



