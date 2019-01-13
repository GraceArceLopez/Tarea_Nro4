setwd("~/Tarea_Nro4")

#dv: int -> int
#Def dv: función para generar digito verificador para un rut válido
#Ejemplo: dv(18749743)-> 4

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


Digito_verificador(18066591)
"Test"
Digito_verificador(8315225)
Digito_verificador(8919162)
Digito_verificador(19186427)
Digito_verificador(17835666)


#Definicion de tiempo: tiempo que se demora en codificar Ruts 
#Definicion de Ruts: crea una lista de 5.000 numeros de ruts aleatorios unicos con su digito verificador, todos estos sin repetición "


tiempo<- proc.time()
Ruts <- list()
for(i in sample(0000000:9999999,5000,replace=F)){
  rut<- print(paste(i,"-",Digito_verificador(i)))
  Ruts <-c(Ruts,rut)
}
proc.time() - tiempo


#contarSaldoNegativo: ... -> int
#Definicion contarSaldoNegativo:

clientes <- list (list(1,"paulina",-22000),list(2,"ruben",-50000),list(3,"carlos",1000),list(4,"mary",-25000))

contarSaldoNegativo <- function(listaclientes){
  GenteSaldoNegativo <- 0
  for (cliente in listaclientes){
    if (cliente[3] < 0){
      GenteSaldoNegativo<- (GenteSaldoNegativo+1)
    }
  }
  return(GenteSaldoNegativo)
}

#Test
contarSaldoNegativo(clientes)


#sinvocales: string -> string sin vocales
#Definicion sinvocales: introducir x frase que sea devuelta sin las vocales
#Ejemplos: Chile campeon , El partido termino con 0 goles 

sinVocales <- function(oracion){
  stringsinvocales <- ""
  strspliteada <- strsplit(oracion, "")[[1]]  
  for (letra in strspliteada){
    if(letra != "a" && letra != "e" && letra != "i" && letra != "o" && letra != "u" && letra != "A" && letra != "E"
       && letra != "I" && letra != "O" && letra != "U") {
      stringsinvocales <- paste(stringsinvocales, letra, sep="")
    }
  }
  return(stringsinvocales)
}

#Test
Frase <- "Chile campeon"
sinVocales(Frase)
Frase_2 <- "El partido termino con 0 goles"
sinVocales(Frase_2)


#strsplit: sting -> int
#Def strsplit: función para contar palabras


strsplit(a,b)[[1]]

#a: cadena de strings. 
#b: es el separador del texto.
