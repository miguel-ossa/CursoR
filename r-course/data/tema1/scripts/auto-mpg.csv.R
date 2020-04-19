# Lectura de ficheros CSV
setwd("D:/Documents/Estudios/Estudios MOOC/Udemy/CursoR/r-course/data/tema1/scripts")
options(width=100)
options(digits=20)

#read,csv2 == read.csv("filename", sep=";", dec=",")
#sep="t"
auto <- read.csv("../auto-mpg.csv", header=TRUE, sep=",", 
                 na.strings = "", stringsAsFactors = FALSE)
names(auto)
auto_no_header <- read.csv("../auto-mpg-noheader.csv", header=FALSE, sep=",")
head(auto_no_header, 4)
auto_custom_header <- read.csv("../auto-mpg-noheader.csv", 
                               header=FALSE, sep=",", 
                               col.names=c("numero", "millas_por_galeon", "cilindrada", 
                                           "desplazamiento", "caballos_de_potencia", 
                                           "peso", "aceleracion", "año", "modelo")
                               )
head(auto_custom_header, 4)
who_from_internet <- read.csv("https://frogames.es/course-contents/r/intro/tema1/WHO.csv", 
                              stringsAsFactors = FALSE)
head(who_from_internet, 3)

