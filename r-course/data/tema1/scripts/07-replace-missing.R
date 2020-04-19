# Replace missing data
setwd("D:/Documents/Estudios/Estudios MOOC/Udemy/CursoR/r-course/data/tema1/scripts")
options(width=100)
options(digits=10)

data <- read.csv("../missing-data.csv", na.strings="") # Identifica no informados como NA
data$Income[data$Income == 0] <- NA # 0 ingresos -> NA
data$Income.mean <- ifelse(is.na(data$Income), 
                           mean(data$Income, na.rm=T), 
                           data$Income)

rand.inputado <- function(x) { # x es un vector de datos con posibles NA
  missing <- is.na(x) # vector con T o F dependiendo de si esa fila tiene NA o no
  n.missing <- sum(missing) # número de filas con NA
  x.obs <- x[!missing] # vector sin NA
  inputado <- x 
  inputado[missing] <- sample(x.obs, n.missing, replace=T) # sustituir missings con una muestra aleatoria
  return (inputado)
}

random.inputado.data.frame <- function(dataframe, cols) {
  names <- names(dataframe)
  for(col in cols) {
    name <- paste(names[col], ".inputado", sep="")
    dataframe[name] <- rand.inputado(dataframe[,col])
  }
  return (dataframe)
}
data <- read.csv("../missing-data.csv", na.strings="") # Identifica no informados como NA
data$Income[data$Income == 0] <- NA # 0 ingresos -> NA
data <- random.inputado.data.frame(data, c(1,2))

