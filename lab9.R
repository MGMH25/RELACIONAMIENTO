#ejecutar librería
library (EconGeo)
#Importar datos: import Dataset > from text(base) >elegir ruta del archivo
#Cargar matriz de datos
M = as.matrix(
  read.csv("~/Downloads/rca_2014.csv" , 
           sep = ",", 
           header = T, 
           row.names = 1))
#visualizar la matriz cargada
head (M[,1:10])
#obtener el orden de la matriz: renglones x columnas
dim (M)
#visualizar la matriz cargada (los primeros 10 datos)
head (M[,1:10])
#calcular las co-ocurrencias entre personas/países/estados/municipios
co.occurrence(M)
#calcular las co-ocurrencias entre productos (matriz transpuesta)
c=co.occurrence(t(M))
#visualizar
c
#estimar el relacionamiento o proximidad, normalizado, teniendo como input las co-ocurrencias 
#asegurar que el número de co-ocurrencias que observamos 
r=relatedness(c)
r
#generar matriz binaria 
r[r<1] = 0
r[r>1] = 1
#visualizar 
r
#llamar librería 
library(igraph)
#crear el gráfico g1 del espacio-producto que tome en cuenta el relacionamiento
g1=graph_from_adjacency_matrix (r,mode = "undirect")
#visualizar el gráfico g1 del espacio-producto
plot(g1)
#exportar resultados del relacionamiento binario
write.csv(r,file="relatedness.cvs")
#exportar resultados de co-ocurrencias
write.csv(c,file="coocurrences.cvs")