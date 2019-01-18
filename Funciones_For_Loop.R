source('Funciones.R')

#Ejercicio Nº1

#Ruts: Lista de Int y string intercalado.
#Def Ruts: Lista de 5001 datos distintos, de 8 digitos (rut) y el digito verificador (dv) asociado al dato.
#Ejemplo: Ruts
# [1] 17292968 - 0

#dv: Int->String
#Def dv: Retorna el digito verificador de cada eleento de la lista para validar el Rut.
#Ejemplo: dv(17451049)->0


#Test

dv(17292968)
dv(717777)
dv(17451049)


rm(Ruts)


#t: tiempo que se demora en ejecutar un codigo
#def t: tiempo que se demora en recorrer la lista Ruts_validos

t <- proc.time()
for(rut in Ruts_validos){
  print(rut)
}
proc.time() - t

*/user  system elapsed 
5.11    0.06    5.17   /*
  
  #R: El tiempo de ejecucion del cod es 5.17 segundos


#Ejercicio Nº2

#Contar: String->String
#Def contar: "strsplit(a,b)[[1]]":
#             Seprara y cuenta las palabras ingresadas en "a"
#             Separadas por la condiciOn de "b"
#Ejemplo: Contar<-strsplit(" Porque la llama que llama estando en llamas me llama, alguien más llama "," ")[[1]] 
#         
#   ->    [1] ""        "Porque"  "la"      "llama"   "que"     "llama"   "estando" "en"      "llamas" 
#         [10] "me"      "llama,"  "alguien" "mas"     "llama"  

#Minuscula: String->String
#Def Minuscula: considera todas las letras como minuscula 
#Ejemplo: Minuscula(Contar)
#        [1] ""        "porque"  "la"      "llama"   "que"     "llama"   "estando" "en"      "llamas" 
#        [10] "me"      "llama,"  "alguien" "mas"     "llama"  

#Unico: String->String
#Def Unico: Cuenta solo una palabra sin repetir y en minisculas
#Ejemplo: unico(Minuscula)
# ->     [1] "porque"  "la"      "llama"   "que"     "estando" "en"      "llamas"  "me"      ","      
#        [10] "alguien" "mas"   


Minuscula<-tolower(Contar)
Unico<-unique(Minuscula)
Minuscula2<-tolower(Contar2)
Unico2<-unique(Minuscula2)

#Test1
Contar
Minuscula
Unico

#Test2
Contar2
Minuscula2
Unico2

#Contado las palabras
ContandoLlamas<-list()
for(i in 1:length(Unico2)){
  print(Unico2[i])
  contador <- 0
  for (y in 1:length(Minuscula2)){
    print(Minuscula2[y])
    if(Unico2[i]==Minuscula2[y]){
      print(contador <- contador+1)
    }
  }
  ContandoLlamas<-c(ContandoLlamas,contador) 
}

#Ejercicio Nº3

#SaldoNegativo: String->Int
#Def: Cuenta la cantidad de clientes que tienen saldo negativo insrtos en una lista.
#Ejemplo: SaldoNagito(ListaClientes) -> 4

ListaClientes<-list(list(1,"Jaime",-700),
                    list(2,"Jonathan",1207),
                    list(3,"Paulo",-303),
                    list(4,"Anahis",660),
                    list(5,"Máximo",-500),
                    list(6,"Grace",-440))

#Test
SaldoNegativo(ListaClientes)


#Ejercicio Nº4

#SaldoNegativa: String->String
#Def: Retorna las frases en una oracion sin vocales.
#Ejemplo: SinVocales('El partido termino con 0 goles')->'l prtd trmn cn 0 gls'

Oracion<- "Everything happens for a reason"

#Test
SinVocales(Oracion)