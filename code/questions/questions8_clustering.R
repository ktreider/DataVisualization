#questions 8 - clustering

library(openxlsx)
library(NbClust)


file <- "./rawData/customer.xlsx"
custDF <- read.xlsx(xlsxFile = file, sheet = 1, startRow=1, 
                    skipEmptyRows = TRUE, rows=0:13, colNames=TRUE)
show(custDF)

#if needs normalizing - scale
scaledDF <- scale(custDF)
print(scaledDF)



#---NBClust() attempts---------------------------------------------------------
#data<-iris[,-c(5)]
data<-scaledDF
res<-NbClust(data, diss=NULL, distance = "euclidean", min.nc=2, max.nc=6, 
             method = "ward.D2", index = "kl") 
res$All.index
res$Best.nc
res$Best.partition

res<-NbClust(data, diss=NULL, distance = "euclidean", min.nc=2, max.nc=6, 
             method = "kmeans", index = "hubert")
res$All.index


res<-NbClust(data, diss=NULL, distance = "manhattan", min.nc=2, max.nc=6, 
             method = "complete", index = "all") 
res$All.index
res$Best.nc
res$All.CriticalValues
res$Best.partition

