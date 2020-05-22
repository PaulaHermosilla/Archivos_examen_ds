setwd("C:/Users/Paula/Desktop/Examen_DS/Archivos_examen_ds")
datos<-load("muestra20.RData", envir = parent.frame(), verbose = FALSE)
names(muestra20)<- c("nif", "nombre", "genero")
names(muestra20)

#NIF
regexp <- "([[:digit:]]{8}) ([[:alpha:]]{1})"
grepl(pattern = regexp, x = muestra20$nif)
muestra20<-muestra20[-c(1:26),]
