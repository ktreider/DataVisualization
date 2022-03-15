#questions 9 - linear regression

#---tests----------------------------------------------------------------------
#regression model to predict scores of test2 based on 1
#predict for someone who got 46 on test 1
#slope and intercept of model?
#plot linear correlation
testDF <- read.table(text = 'test1 test2
                    1 59 56
                    2 52 63
                    3 44 55
                    4 51 50
                    5 42 66
                    6 42 48
                    7 41 58
                    8 45 36
                    9 27 13
                    10 63 50
                    11 54 81
                    12 44 56
                    13 50 64
                    14 47 50
                    ')
str(testDF)

plot(testDF$test2~testDF$test1, xlab = "test 1", ylab="test 2", main="Test Scores")
summary(lm(formula = testDF$test2~testDF$test1))
abline(lm(formula = testDF$test2~testDF$test1), col = "green")


#---gdp stuff------------------------------------------------------------------
#regression model that predicts revenue
#slopes and intercepts of model
#plot graph of linear correlation
library(openxlsx)
file <- "./rawData/gdp.xlsx"
custDF <- read.xlsx(xlsxFile = file, sheet = 1, startRow=1, 
                    skipEmptyRows = TRUE, rows=0:15, colNames=TRUE)
show(custDF)

#.9882 year
plot(custDF$revenueMillions~custDF$year, xlab="Year", ylab="Revenue (Mil)", main="Revenue Growth over the years")
summary(lm(formula = custDF$revenueMillions~custDF$year))
abline(lm(formula = custDF$revenueMillions~custDF$year), col = "green")

#.876 gdp
plot(custDF$revenueMillions~custDF$gdp)
summary(lm(formula = custDF$revenueMillions~custDF$gdp))
abline(lm(formula = custDF$revenueMillions~custDF$gdp), col = "green")

#.6184 service calls
plot(custDF$revenueMillions~custDF$serviceCalls)
summary(lm(formula = custDF$revenueMillions~custDF$serviceCalls))
abline(lm(formula = custDF$revenueMillions~custDF$serviceCalls), col = "green")

#.8957 num employees
plot(custDF$revenueMillions~custDF$numEmployees)
summary(lm(formula = custDF$revenueMillions~custDF$numEmployees))
abline(lm(formula = custDF$revenueMillions~custDF$numEmployees), col = "green")

#.9545 num items
plot(custDF$revenueMillions~custDF$numItems)
summary(lm(formula = custDF$revenueMillions~custDF$numItems))
abline(lm(formula = custDF$revenueMillions~custDF$numItems), col = "green")
