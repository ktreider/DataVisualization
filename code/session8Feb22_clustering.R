#session 8 - wk10 folder

#---clustering-----------------------------------------------------------------
#unsupervised learning - no output/dependent variable for which a right or 
#wrong answer can be computed

#packages:
#cluster
#NbClust
#flexclust
#factoextra
#rattle
#ggplot2
#Datasets


#hierarchical: each obs is cluster, joined by two until all clusters become one
#partitioning: k clusters specified

#real world example: grouping people of similar sizes to make a small, 
#medium, and large T-shirt sizes
#targeted marketing


#---distances. euclidean and Manhattan-----------------------------------------


#---K MEAN---------------------------------------------------------------------
#look at steps on ppt

#arbitrarily select Centroids - improve - K Clusters?


#steps:
#normalize the data (scale)
#pick arbitrary num of segments to be created
#pick randomly some normalized centroids for each segment (or from orig table. then normalize)
#calculate euclidean distances from each point the centroids
#assign points to their closest centroids
#recalculate values of new centroids based on previous clusters
#repeat calc dist and assign to centroids until centroids stable (groups converge)
#if clusters not satisfactory, go back and choose diff num segments


#---normalize table------------------------------------------------------------

#normalized value = 100 * (point - min) / (max-min)
#min - min val in col
#max - max in col
#point - value of col under consideration


#scale() normalizes


#---hierarcial cluster---------------------------------------------------------
#hclust(d, method) where d is dist matrix using dist() and
#method is "single, complete, average, centroid, or ward"

#find dist from all obs, elim between shortest distances





