library (EconGeo)

install.packages("devtools")

install.packages("devtools")
library(devtools)
devtools::install_github("PABalland/EconGeo", force = T)
1
1
library (EconGeo)

M = as.matrix(
  read.csv("https://raw.githubusercontent.com/PABalland/ON/master/amz.csv" , 
           sep = ",", 
           header = T, 
           row.names = 1))
#visualizar matriz cargada#
M
#Transformar la matriz de datos en un data frame. Primero crear una Edge List(lista de aristas) y especificar los nombrs de las columnas#
EL=get.list(M)
colnames(EL) =c("Costumer","Product","Count")
#visualizar la Edge list creada (Dataframe útil para estudios estadísticos y econométricos)#
EL
#Transformar una lista de aristas (Edge list o dataframe) en una matriz
MM=get.matrix(EL)
#visualizar la matriz transformada (útil para operaciones algebraicas)
MM
x=subset(EL,Product=="Tie")
x
