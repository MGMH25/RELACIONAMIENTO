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
M
EL=get.list(M)
colnames(EL) =c("Costumer","Product","Count")
EL
MM=get.matrix(EL)
MM
x=subset(EL,Product=="Tie")
x
