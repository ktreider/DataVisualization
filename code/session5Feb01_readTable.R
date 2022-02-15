#session 5
#importing and graph basics

library(tidyverse)

#---read.table()---------------------------------------------------------------
#file <- "./rawData/Rallfun-v39.txt"
#data <- read.table(file,      # TXT data file indicated as string or full path to the file
#header = FALSE,    # Whether to display the header (TRUE) or not (FALSE) - if first line has names
#sep = "",          # Separator of the columns of the file
#dec = ".")         # Character used to separate decimals of the numbers in the file
#skip is the num of lines to be skipped before starting to read the file
#nrows is the number of rows to import, default is all lines



#---importing files into an empty data frame-----------------------------------
#df <- data.frame(variable1 = data_type(0), variable2 = data_type(0)...) )

salesPerson <- data.frame(sid=character(0), lname=character(0), 
                          city=character(0), scom=numeric(0))
salesPerson <- read.table("./rawData/SalesData.txt", header=TRUE)
show(salesPerson)



#---importing files directly w/file path---------------------------------------
#df <- read.table("path-to-file", options)
#separate fields of path using \\ or /

file <- "./rawData/salesData.txt"
salesDF <- read.table(file, sep="", header=TRUE)
show(salesDF)



#---excel file functions-------------------------------------------------------
#Best Practices: elim symbols, eliminate blanks in variable names, change NULL to NA
#XLConnect - newest package to use readWorksheetFromFile() function
#readxl package for readxl() or read_excel() functions
#xlsx package for function write.xlsx(df, file-path, SheetName="Sheet1", 
      # + col.names=TRUE, row.names=TRUE, append=FALSE, showNA=True)






