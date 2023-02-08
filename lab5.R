install.packages("tidyverse")
install.packages("readr")
t1_PIVOTANTE = TABLA1 %>% 
      pivot_longer(cols = c("Km0"   ,   "Km2"   ,   "Km4"   ,   "Km6"   ,   "Km8"    ,  "Km10"  ,   "Km12"  ,   "Km14"  ,   "Km16"  ,   "Km18"   ,  "Km20"  ,   "Km22" , "Km24"  ,   "Km26" ), names_to = "iteracion", values_to = "ranking")
library(tidyverse)
library(readr)