# Remove duplicates
setwd("D:/Documents/Estudios/Estudios MOOC/Udemy/CursoR/r-course/data/tema1/scripts")
options(width=100)
options(digits=10)

family.salary <- c(40000, 60000, 50000, 80000, 60000, 70000, 60000)
family.size <- c(4, 3, 2, 2, 3, 4, 3)
family.car <- c("Lujo", "Compacto", "Utilitario", "Lujo", "Compacto", "Compacto", "Compacto")
family <- data.frame(family.salary, family.size, family.car)

family.unique <- unique(family) # Elimina filas duplicadas
duplicated(family) # Muestra un vector booleano de duplicados
family.duplicados <- family[duplicated(family),]

