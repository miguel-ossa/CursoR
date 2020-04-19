# Reescalado
setwd("D:/Documents/Estudios/Estudios MOOC/Udemy/CursoR/r-course/data/tema1/scripts")
options(width=100)
options(digits=10)

install.packages("scales")
library(scales)

students <- read.csv("../data-conversion.csv")

students$Income.reescaled <- rescale(students$Income) # Reescalamos el sueldo de 0 a 1
(students$Income - min(students$Income)) / (max(students$Income) - min(students$Income)) # Idem
rescale(students$Income, to=c(0, 100)) # Reescalamos el sueldo de 0 a 100

rescale.many <- function(dataframe, cols) {
  names <- names(dataframe)
  for (col in cols) {
    name <- paste(names[col], "rescaled", sep=".")
    dataframe[name] <- rescale(dataframe[,col])
  }
  cat(paste("Hemos reescalado ", length(cols), " variable(s)"))
  dataframe
}

students <- rescale.many(students, c(1, 4))
