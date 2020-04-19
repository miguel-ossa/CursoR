# Missing data
setwd("D:/Documents/Estudios/Estudios MOOC/Udemy/CursoR/r-course/data/tema1/scripts")
options(width=100)
options(digits=20)

data <- read.csv("../missing-data.csv", na.strings="") # Identifica no informados como NA
data$Income[data$Income == 0] <- NA # 0 ingresos -> NA
data_limpio <- na.omit(data) # Elimina filas con NA
data_limpio_2 <- data[complete.cases(data),] # Elimina filas con NA

is.na(data[4,2]) # Devuelve T o F
is.na(data$Income) # Devuelve un vector con T o F

data_income_clean <- data[!is.na(data$Income),] # Limpieza selectiva
complete.cases(data) # Devuelve las filas sin NA

# Medidas de centralización y dispersión
mean(data$Income) # Devuelve NA
mean(data$Income, na.rm=T) # Devuelve el promedio

sd(data$Income) # Devuelve NA
sd(data$Income, na.rm=T) # Devuelve la desviación estándar

