#ejecutar librería#
library (EconGeo)
#Importar datos: import Dataset > from text(base) >elegir ruta del archivo#
#Cargar matriz de datos#
M = as.matrix(
  read.csv("~/Downloads/rca_2014.csv" , 
           sep = ",", 
           header = T, 
           row.names = 1))
#visualizar la matriz cargada#
head (M[,1:10])
#obtener el orden de la matriz: renglones x columnas#
dim (M)
head (M[,1:10])
co.occurrence(M)
c=co.occurrence(t(M))
c
r=relatedness(c)
r
r[r<1] = 0
r[r>1] = 1
r
library(igraph)
g1=graph_from_adjacency_matrix (r,mode = "undirect")
plot(g1)
write.csv(r,file="relatedness.cvs")
write.csv(c,file="coocurrences.cvs")