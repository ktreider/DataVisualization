#session 6
#wk 8 material

#---decision trees-------------------------------------------------------------
#hierarchically branched structures that are useful to arrive quickly
#to a decision by asking only a few meaningful questions in a particular seq

#classification supervised learning method- w/ binary outcome

#tree-based methods
#top-down, recursive, greedy

#choose classification rule
#1R / 1-rule
# count how often each class appears
# for each value:
#   find most freq class and assign rule to that value
#   calc the error rate of the rule by counting the num of classes in minority
#   choose the rule with smallest error/ "misses"

#examples
#sort by "Sunny". if 5 instances, 3 say no, 2 say yes then rule = no (2/5 misses)


#install.packages("C50")
library(C50)
#create tree using c5.0 function

gameDF <- read.table(text = "
                     Outlook Temp Humidity Windy Play
                     1 Sunny Hot High FALSE No
                     2 Sunny Hot High TRUE No
                     3 Overcast Hot High FALSE Yes
                     4 Rainy Mild High FALSE Yes
                     5 Rainy Cool Normal FALSE Yes
                     6 Rainy Cool  Normal TRUE No
                     7 Overcast Cool Normal TRUE Yes
                     8 Sunny Mild High FALSE No
                     9 Sunny Cool Normal FALSE Yes
                     10 Rainy Mild Normal FALSE Yes
                     11 Sunny Mild Normal TRUE Yes
                     12 Overcast Mild High TRUE Yes
                     13 Overcast Hot Normal FALSE Yes
                     14 Rainy Mild High TRUE No")
str(gameDF)
#print(gameDF)
gameDF$Play <- as.factor(gameDF$Play)
gameDF$Windy <- as.factor(gameDF$Windy)
gameDF$Outlook <- as.factor(gameDF$Outlook)
gameDF$Temp <- as.factor(gameDF$Temp)
gameDF$Humidity <- as.factor(gameDF$Humidity)

tr <- C5.0(Play ~ Outlook + Temp + Humidity + Windy, data = gameDF)
plot(tr)


#anything after this was rushed and missed - refer to ppt
#---rpart----------------------------------------------------------------------
#build tree
fit <- rpart(Play ~ Outlook + Temp + Humidity + Windy, method="class", data.frame(gameDF))

#display 
printcp(fit)


#---Regression Tree pkg--------------------------------------------------------
#install.packages("tree")
library(tree)

ct <- tree(Play ~ Outlook + Temp + Humidity + Windy, data.frame(gameDF))
summary(ct)



#---entropy & information gain-------------------------------------------------
#entropy- measure of disorder 0 <= entropy <= 1 'bits'
#concept of purity/ mixed

#purity(p1, p2, ... pn) = entropy = -(p1 * lg(p1) + p2 * lg(p2) + ...)

#Log2(x) = log(x) / log(2)
#or use lg(p) in R?


#entropy[value-of-variable] = entropy[Num "yes", num "no"]
#entropy[x,y] = entropy[y,x]
#entropy[pure-node] = 1, or when the mixture of "yes" v "no are equal


#Information Gain (IG)
#within the context of splittle the predictive space,
#measures how much an attribute...

#IG(parent, children) = parent-entropy - [FORMULA]
#pi is relative percentage of the sum of "yes" and "no"





