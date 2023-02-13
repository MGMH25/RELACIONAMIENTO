library (EconGeo)
M = as.matrix(
  read.csv("https://raw.githubusercontent.com/PABalland/ON/master/amz.csv" , 
           sep = ",", 
           header = T, 
           row.names = 1))
M
co.occurrence(M)
c=co.occurrence(t(M))
r=relatedness(c)
r
r[r<1]=0
r[r>1]=1
library(igraph)
package(igraph)
install.packages("igraph") 
library(igraph)
g1=graph_from_adjacency_matrix (r,mode="undirected")
plot(g1)
