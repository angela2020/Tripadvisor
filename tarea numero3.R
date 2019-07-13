
#receta de dise?o ejercicio 1
#Conducta_X: int int int -> string
#Def Conducta_X: Dado ciertas condiciones de (x,y,q)que entregue el resultado ganador (votoSi o votoNo)
#funcion:
padronElectoral<-(x+y)
votosSi<-x
votosNo<-y
q<-(0.5+1)(x+y)

casosVotaciones <- list(c(100,30,30),c(100,20,21),c(100,30,10),c(100,40,30),c(100,10,30),c(100,20,40))
for(caso in casosVotaciones) {
  padron <- caso[1]
  votosSi <- caso[2]
  votosNo <- caso[3]
  totalVotos(votosSi,votosNo,padron)
}

totalVotos<-function(x,y,q){
  
  if(x+y<q){
    if(x>=0.3*(q)){
    print("votoSi")
    }else if(y>=0.3*(q)){
    print("votoNo")
    }else{
      print("se escapo")
    }
  }else{
    if(x>y){
      print("votoSi")
    }else if(x<y){
      print("votoNo")
    }else{
      #(x=y)
      print("empate")
    }
  }
}


#receta de dise?o ejercicio 2
#conductaCi:double double int->double
#DefCi: Dado (cf,i,p)entregue el capital inicial [cf/1+i^p]
#ejemplo:(1763193,0.08,5) debe dar 1.200.000
capitalInicial(Cn,i,n)

capitalInicial<-function(cf,i,p){
  cf/1+i^p 
}




#receta de dise?o ejercicio 3
#Conducta: list(string) int -> list(string)
#Def: devuelve una lista que contiene las palabras de largo N que aparecen en la lista de palabras
#funcion:
lista1<-list(angel,lara,moreira)
valorN<-x
palabraDeLargoN<-function(lista1,x){
  print( strsplit(lista1="_"))
}




#receta de dise?o ejercicio 4
#Conducta:  list(int,int) ->int
#def:recibe una lista de cartas con la frecuencia de esa carta, y devuelve los puntos totales del mazo.
#ejemplo: recibe el mazo ((q,2),(k,3)) debe dar 63
#funcion:
a<-20
j<-11
q<-12
k<-13

PuntosDeCartas->(y)
frecuencia->(x)

contarPuntos<-list(y=c(a,2,3,4,5,6,7,8,9,10,j,q,k),x=c(1,2,1,3,4,5,6,7,8,5,8,1))
value<-unlist(contarPuntos)


tmp<-value[i]
value[i]<-velue[i+1]
value[i+1]<-tmp

for(i in 1:length(value)) {
  
  tmp+value[i+1]
}

