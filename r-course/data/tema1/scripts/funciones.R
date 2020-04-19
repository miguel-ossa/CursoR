
# Reemplazar NAs con muestras aleatorias
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

# Reescalado
rescale.many <- function(dataframe, cols) {
  names <- names(dataframe)
  for (col in cols) {
    name <- paste(names[col], "rescaled", sep=".")
    dataframe[name] <- rescale(dataframe[,col])
  }
  cat(paste("Hemos reescalado ", length(cols), " variable(s)"))
  dataframe
}