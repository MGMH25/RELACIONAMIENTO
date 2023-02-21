####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Carla Carolina Pérez Hernández (UAEH)
#Ejecutado por María Guadalupe Montiel Hernández

# Laboratorio - Gestión de datos de red - curaduría de datos

# Objetivo: Explorar la organización de los datos
# ------------------------------------------------------------------------------------------------------
# En este ejercicio vamos a:
# 1. Cargar nuestra matriz hipotética de datos
# 2. Transformar la matriz en un dataframe
# 3. Conventir un dataframe en matriz


########################################
# LABORATORIO: Gestión de datos de red #
########################################


# Gestión de datos de red
# 1. Transformar la matriz en un dataframe
#ejecutar librería de EconGeo 

library (EconGeo)

#Instalar librería 

install.packages("devtools")

#llamar librería 
library(devtools)
devtools::install_github("PABalland/EconGeo", force = T)
1
1
library (EconGeo)
#cargar matriz hipotética de datos 
M = as.matrix(
  read.csv("https://raw.githubusercontent.com/PABalland/ON/master/amz.csv" , 
           sep = ",", 
           header = T, 
           row.names = 1))
#visualizar matriz cargada
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
#generar un objeto x que sea una subtabla que contenga un dataframe del producto ¨tie
x=subset(EL,Product=="Tie")
#visualizar objeto x
x
