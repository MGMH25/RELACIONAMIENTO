#instalar paquetería tidyverse
install.packages("tidyverse")
#instalar paquetería readr
install.packages("readr")

library(tidyverse)
library(readr)

#importar datos: import dataset > From text (readr) > elegir la ruta del archivo
#copiar código 
#Cargar datos. Cambiar el nombre del archivo por tabla 1
tabla 1 <- read_csv(ice 2014.csv)

#visualizar una parte de la tabla 
head(tabla1)

Visualizar nombres de tabla1
#names(tabla1)

#pivotar TABLA1 ¨A LO LARGO¨ (porque está ordenada originalmente a lo ancho)
t1_PIVOTANTE = TABLA1 %>% 
  pivot_longer(cols = c("Km0"   ,   "Km2"   ,   "Km4"   ,   "Km6"   ,   "Km8"    ,  "Km10"  ,   "Km12"  ,   "Km14"  ,   "Km16"  ,   "Km18"   ,  "Km20"  ,   "Km22" , "Km24"  ,   "Km26" ), names_to = "iteracion", values_to = "ranking")

#Visualizar una parte de la tabla 1 pivotada A LO LARGO 
head(t1_PIVOTANTE)

#Exportar resultado: tabla ordenada ¨A lo largo¨
write.csv(t1_PIVOTANTE, file =ice_CHARTICULATOR.csv)

#Identificar la ruta donde se guardó la tabla pivotada para consulta desde ordenador 
getwd()


