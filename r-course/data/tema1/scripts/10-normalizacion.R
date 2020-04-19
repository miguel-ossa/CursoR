# Normalización
setwd("D:/Documents/Estudios/Estudios MOOC/Udemy/CursoR/r-course/data/tema1/scripts")
options(width=100)
options(digits=10)

housing <- read.csv("../BostonHousing.csv")
housing.z <- scale(housing)
