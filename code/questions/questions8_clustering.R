#questions 8 - clustering

library(openxlsx)
library(NbClust)
library(flexclust)


file <- "./rawData/customer.xlsx"
custDF <- read.xlsx(xlsxFile = file, sheet = 1, startRow=1, 
                    skipEmptyRows = TRUE, rows=0:13, colNames=TRUE)
show(custDF)

#if needs normalizing - scale
scaledDF <- scale(custDF)
print(scaledDF)



#---NBClust() attempts---------------------------------------------------------
data<-scaledDF
res<-NbClust(data, diss=NULL, distance = "euclidean", min.nc=2, max.nc=6, 
             method = "ward.D2") 
#res$All.index
res$Best.nc
res$Best.partition
table(res$Best.nc[1,])
barplot(table(res$Best.nc[1,]))

res<-NbClust(data, diss=NULL, distance = "euclidean", min.nc=2, max.nc=6, 
             method = "kmeans")
#res$All.index
res$Best.nc
res$Best.partition
table(res$Best.nc[1,])
barplot(table(res$Best.nc[1,]))

res<-NbClust(data, diss=NULL, distance = "manhattan", min.nc=2, max.nc=6, 
             method = "average") 
#res$All.index
res$Best.nc
#res$All.CriticalValues
res$Best.partition
table(res$Best.nc[1,])
barplot(table(res$Best.nc[1,]))


#from ppt
#res<-NbClust(data, diss=NULL, distance="euclidean", min.nc=2, max.nc=6, 
#             method="average")
#table(res$Best.nc[1,])
#barplot(table(res$Best.nc[1,]))

#---hclust() attempts----------------------------------------------------------
hclustering <- hclust(dist(scaledDF), method="centroid")
plot(hclustering, hang=-1)

clusters <- cutree(hclustering, k=2)
table(clusters)
aggregate(scaledDF, by=list(cluster=clusters), median)
plot(hclustering, hang=-1)
rect.hclust(hclustering, k=2)


hclustering <- hclust(dist(scaledDF), method="average")
plot(hclustering, hang=-1)
table(clusters)
aggregate(scaledDF, by=list(cluster=clusters), median)
plot(hclustering, hang=-1)
rect.hclust(hclustering, k=2)

cl <- kmeans(custDF, 2, iter.max=10)
cl$centers
cl
plot(custDF, col = cl$centers)


