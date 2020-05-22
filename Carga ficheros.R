setwd("C:/Users/Paula/Desktop/Examen_DS/Archivos_examen_ds")
datos<-load("muestra20.RData", envir = parent.frame(), verbose = FALSE)
names(muestra20)<- c("nif", "nombre", "genero")
names(muestra20)

<<<<<<< HEAD
#NIF
regexp <- "([[:digit:]]{8}) ([[:alpha:]]{1})"
grepl(pattern = regexp, x = muestra20$nif)
muestra20<-muestra20[-c(1:26),]
=======
#Género
#tabla de frecuencia chicos y tabla chicas
library(dplyr)
library(tidyverse)

unique(muestra20$nombre)

funfreq<-function(muestra20,x,top){
  freq_df<-as.data.frame(table(x))%>%
    top_n(top,Freq)%>%
    arrange(desc(Freq))
  porcentaje<-(freq_df$Freq/dim(muestra20)[1])*100
  freq_acumulada<-cumsum(porcentaje)
  freq_df<-cbind(freq_df,porcentaje,freq_acumulada)
}

freq_genero<-funfreq(muestra20,muestra20$nombre,20)

genero$genero_imp[genero$n_M>genero$n_V]="M"
genero$genero_imp[genero$n_V>genero$n_M]="V"


muestra20[,4]<- muestra20[,3]
names(muestra20)<- c("nif","nombre","genero"," genero_imp")
muestra20[,4]<- if_else((muestra20$nombre)=="JOSE","V")
>>>>>>> rama-genero
#alguna modificación