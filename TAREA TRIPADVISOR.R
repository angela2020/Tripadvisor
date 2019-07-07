library('rvest')
#link de restaurantes elegantes en santiago#
paginaTrip<-"https://www.tripadvisor.cl/Restaurants-g294305-Santiago_Santiago_Metropolitan_Region.html"
paginaTripRead<-read_html(paginaTrip)
paginaTripNodes<-html_nodes(paginaTripRead,".ui_column is-9 shortSellDetails")
 
textoTrip <- html_text(paginaTripNodes)
print(textoTrip)

