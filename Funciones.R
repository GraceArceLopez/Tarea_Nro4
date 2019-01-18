setwd("~/Tarea_Nro4")

#Crear Ruts
dv <- function(rut){
  rut = as.character(rut)
  x = as.numeric(rev(strsplit(rut,NULL)[[1]]))
  Multiplo = rep(2:7,length.out=length(x))
  y = sum(x*Multiplo)
  z = 11 - y + floor(y/11)*11
  key = c(1:11)
  val = c(1:9,"k",0)
  dv = val[match(z, key)]
  return(dv)
}

#Contar Llama
a<-" Porque la llama que llama estando en llamas me llama, alguien mas llama"
b<-" "
c<-"Porque la llama que llama estando en llamas me llama , alguien mas llama"
Contar<-strsplit(a,b)[[1]]
Contar2<-strsplit(c,b)[[1]]



#Contar saldo Negativo de una lista de clientes
SaldoNegativo <- function(Clientes){
  CantidadClientes <- 0
  for (i in Clientes){
    if (i[3] < 0){
      CantidadClientes<- (CantidadClientes+1)
    }
  }
  return(CantidadClientes)
}



#Función sin vocales
SinVocales <- function(Frase){
  StringSinVocales <- ""
  RecorreLetras<-strsplit(Frase, "")[[1]]  
  for (letra in RecorreLetras){
    if(letra != "a" && letra != "e" && letra != "i" && letra != "o" && letra != "u") {
      StringSinVocales <- paste(StringSinVocales, letra, sep="")
    }
  }
  return(StringSinVocales)
}