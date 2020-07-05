library(leaflet)
df <- data.frame(
  lat = c(19.0760, 13.0827, 27.0238, 10.7905, 46.2530, 21.4858),
  lng = c(72.8777, 80.2707, 74.2179, 78.7047, 20.1414, 39.1925)
)

style = list(
  "color" = "blue",
  "font-family" = "serif",
  "font-style" = "italic",
  "box-shadow" = "2px 2px rgba(0,0,0,0.25)",
  "font-size" = "13px"
  #"border-color" = "rgba(0,0,0,0.5)"
)

BookIcon <- makeIcon(
  iconUrl = "grad.png",
  iconWidth = 25, iconHeight = 20,
  iconAnchorX = 22, iconAnchorY = 25,
  shadowWidth = 50, shadowHeight = 64,
  shadowAnchorX = 4, shadowAnchorY = 62
)

YeastIcon <- makeIcon(
  iconUrl = "dna.png",
  iconWidth = 35, iconHeight = 25,
  iconAnchorX = 22, iconAnchorY = 25,
  shadowWidth = 50, shadowHeight = 64,
  shadowAnchorX = 4, shadowAnchorY = 62
)

seaanemoneIcon <- makeIcon(
  iconUrl = "sea-anemone.png",
  iconWidth = 35, iconHeight = 30,
  iconAnchorX = 22, iconAnchorY = 25,
  shadowWidth = 50, shadowHeight = 64,
  shadowAnchorX = 4, shadowAnchorY = 62
)

mushroomIcon <- makeIcon(
  iconUrl = "mushroom1.png",
  iconWidth = 35, iconHeight = 30,
  iconAnchorX = 22, iconAnchorY = 25,
  shadowWidth = 50, shadowHeight = 64,
  shadowAnchorX = 4, shadowAnchorY = 62
)
df %>%
  leaflet() %>%
  addTiles() %>%
  addMarkers(
    lng = 72.8777, lat = 19.0760,
    label = "PhD, IIT Bombay",
    icon = BookIcon,
    labelOptions = labelOptions(noHide = T, direction="bottom", style = style)) %>%
  addMarkers(
    lng = 80.2707, lat = 13.0827,
    label = "Proj.Scientist, Anna.Univ",
    icon = YeastIcon,
    labelOptions = labelOptions(noHide = T,direction="right",
                                style= style)) %>%
  addMarkers(
    lng = 74.2179, lat = 27.0238,
    label = "Masters'-TA,AL,BITS-Pilani",
    icon = BookIcon,
    labelOptions = labelOptions(noHide = T,direction="bottom", style=style)) %>%
  addMarkers(
    lng = 78.7047, lat = 10.7905,
    label = "Bachelors', SET",
    icon = BookIcon,
    labelOptions = labelOptions(noHide = T,direction="bottom", style = style)) %>%
  addMarkers(
    lng = 20.1414, lat = 46.2530,
    label = "PostDoc, BRC",
    icon = mushroomIcon,
    labelOptions = labelOptions(noHide = T,direction="bottom", style = style)) %>%
  addMarkers(
    lng = 39.1925, lat = 21.4858,
    label = "PostDoc, KAUST*",
    icon = seaanemoneIcon,
    labelOptions = labelOptions(noHide = T,direction="bottom", style = style)) %>%
  addProviderTiles("CartoDB.Voyager")



 

