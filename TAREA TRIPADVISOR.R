library('rvest')
#link de restaurantes elegantes en santiago#
#paginaTrip<-"https://www.tripadvisor.cl/Restaurants-g294305-Santiago_Santiago_Metropolitan_Region.html"
paginaTrip <- "https://www.tripadvisor.cl/RestaurantSearch?Action=FILTER&geo=294305&ajax=1&itags=10591&pid=8&sortOrder=relevance&availSearchEnabled=true&eaterydate=2019_07_13&date=2019-07-14&time=20%3A00%3A00&people=2"
paginaTripRead<-read_html(paginaTrip)

paginaTripNodes<-html_nodes(paginaTripRead,".restaurants-list-ListCell__cellContainer--2mpJS")
paginaTripNodesSubLinkComentarios <- html_nodes(paginaTripNodes,".restaurants-list-components-DesktopOnlyLink__link--2Ubt2")

textoTrip <- html_text(paginaTripNodes)
print(textoTrip)

referencias <- html_attr(paginaTripNodesSubLinkComentarios,"href")
print(referencias)


for(refe in referencias){
  print(refe)
  lecturaRefe <- paste("https://www.tripadvisor.cl",refe,sep = "")
}

###################################################################
###################################################################
###################################################################
# Pasar esto a una funcion como vimos a inicio del curso
paginaAExtraerComentarios <- "https://www.tripadvisor.cl/Restaurant_Review-g294305-d14785102-Reviews-Arpezur_Restaurant-Santiago_Santiago_Metropolitan_Region.html" 
readComentarios<-read_html(paginaAExtraerComentarios)
extracccionComentarios<-html_nodes(readComentarios, ".partial_entry")
textoComentarios<-html_text(extracccionComentarios)

todosLosComentarios <- "";
for(comentario in textoComentarios){
  todosLosComentarios <- paste(todosLosComentarios,comentario)
}
#generando una tabla de frecuencia con las palabras de los comentarios por restaurant
splitComentarios <- strsplit(todosLosComentarios," ")
frecuenciaPalabrasComentarios <- as.data.frame(table(unlist(splitComentarios)))

#se extrae y se guarda tipo csv el nombre del restaurant
nombreRestaurant <- html_nodes(readComentarios,".h1")
nombreRestaurant <- html_text(nombreRestaurant)
nombreRestaurant <- gsub(" ","",nombreRestaurant)
nombreCsv <- paste(nombreRestaurant,".csv",sep = "")


# Almacenando la informacion en CSV
write.csv(nombreCsv, file="comentarioDeRestaurant.csv")


#####funcion1##########################
#toma los comentarios restaurante por restaurante,lo trasforma en una data frame


funcion1<-function(textoComentarios,extracccionComentarios,readComentarios,paginaAExtraerComentarios){
                   todosLosComentarios <- "";
                   for(comentario in textoComentarios){
                   todosLosComentarios <- paste(todosLosComentarios,comentario) }
                   splitComentarios <- strsplit(todosLosComentarios," ")
                   frecuenciaPalabrasComentarios <- as.data.frame(table(unlist(splitComentarios)))
}

#funcion2####
#extrae los nombres de cada restaurant
funcion2<-function(nombreRestaurant){
                   nombreRestaurant <- gsub(" ","",nombreRestaurant)
                   nombreCsv <- paste(nombreRestaurant,".csv",sep = "")}


print(funcion2,funcion1)
