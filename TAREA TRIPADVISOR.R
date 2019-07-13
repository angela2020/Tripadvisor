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

# ratings_and_types block_wrap ui_section
paginaAExtraerComentarios <- "https://www.tripadvisor.cl/Restaurant_Review-g294305-d14785102-Reviews-Arpezur_Restaurant-Santiago_Santiago_Metropolitan_Region.html" 
readComentarios<-read_html(paginaAExtraerComentarios)
extracccionComentarios<-html_nodes(readComentarios, ".partial_entry")
textoComentarios<-html_text(extracccionComentarios)
print(textoComentarios)
#limpiar texto
#textoComentarios<-gsub("\n",textoComentarios)


# Separando las palabras por espacio
splitTextoComentarios <- strsplit(textoComentarios," ")[[1]]
print(splitTextoComentarios)

# Pasando la informacion a un data frame
#dfTextoComentarios <- as.data.frame(textoComentarios)
#str(dfTextoComentarios)
#tabla de frecuencia
FrecuenciaDePalabras<-table(dfTextoComentarios)
#print(FrecuenciaDePalabras)
