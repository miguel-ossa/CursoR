# Lectura de ficheros JSON
setwd("D:/Documents/Estudios/Estudios MOOC/Udemy/CursoR/r-course/data/tema1/scripts")
options(width=100)
options(digits=20)

install.packages("jsonlite")
library(jsonlite)

dat.1 <- fromJSON("../students.json")
dat.2 <- fromJSON("../student-courses.json")

install.packages("curl")
library(curl)

url <- "http://www.floatrates.com/daily/usd.json"
currencies <- fromJSON(url)
currencies[["eur"]]
currencies$eur

dat.1[c(2,5,8),]
