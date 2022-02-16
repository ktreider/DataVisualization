#questions 8

#---mtcars max value-----------------------------------------------------------
maxVal <- function(col) {
  column <- mtcars[col]
  name <- colnames(mtcars)[col]
  sprintf("The maximum value for the column '%s' is: %0.1f", name, max(column))
}
cat("columns:\n-------------------\n",
    "1 mpg\n",
    "2 cyl\n",
    "3 disp\n",
    "4 hp\n",
    "5 drat\n",
    "6 wt\n",
    "7 qsec\n",
    "8 vs\n",
    "9 am\n",
    "10 gear\n",
    "11 carb\n"
    )
maxVal(as.integer(readline(prompt="Enter column number you want to look at: ")))
#check : max(mtcars$mpg)


#---display pattern for loop---------------------------------------------------
  # ********** 
  # *********
  # ********
  # *******
  # ******
  # *****
  # ****
  # ***
  # **
  # *
rows = 10
for (j in c(rows:1)) {
  cat(rep("*", j), "\n")
}


#---heart rate function--------------------------------------------------------
hRate <- function(age) {
  return(220-age)
}

name <- as.character(readline(prompt="What is your name? "))
age <- as.integer(readline(prompt="How old are you? "))
cat("Hello", name, "\nAt", age, "years old, your maximum target heartrate",
    "should be", hRate(age))




