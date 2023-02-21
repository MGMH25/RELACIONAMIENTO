# Hecho con gusto por María Guadalupe Montiel Hernández
# LABORATORIO - RELACIONAMIENTO "CASO HIPOTÉTICO" 

# Objetivo: Estimar el relacionamiento (relatedness, proximidad, métrica de distancia entre productos)
# ------------------------------------------------------------------------------------------------------
# En este ejercicio vamos a:
# 1. Cargar nuestra matriz hipotética de datos
# 2. Calcular co ocurrencias entre personas y productos 
# 3. Estimar el relacionamiento, teniendo como input las co ocurrencias
# 4. Graficar

#######################################
#LABORATORIO: Relacionamiento (r)     #
#######################################
#llamar librería
library (EconGeo)
#cargar matriz hipotética de datos
M = as.matrix(
  read.csv("https://raw.githubusercontent.com/PABalland/ON/master/amz.csv" , 
           sep = ",", 
           header = T, 
           row.names = 1))
#visualizar matriz cargada
M
#calcular las co-ocurrecias entre personas/países/estados
co.occurrence(M)
#calcular las co-ocurrencias entre productos (matriz transpuesta)
c=co.occurrence(t(M))
#estimar el relacionamiento, no normalizado,teniendo como input las co-ocurrencias
r=relatedness(c)
#visualizar matriz de relacionamiento
r
#generar matriz binaria
r[r<1]=0
r[r>1]=1
#ejecutar la libería de igrpah para graficar el espacio-producto
library(igraph)
package(igraph)
install.packages("igraph") 
library(igraph)
#crear gráfico g1 del espacio-producto
g1=graph_from_adjacency_matrix (r,mode="undirected")
#visualizar gráfico g1 del espacio-producto
plot(g1)
