# Ficheros Rdata y rds para compartir dataframes
setwd("D:/Documents/Estudios/Estudios MOOC/Udemy/CursoR/r-course/data/tema1/scripts")
options(width=100)
options(digits=20)

clientes <- c("Miguel", "Juan", "Pedro")
clientes_vip <- c("Miguel", "Pedro")
fechas <- as.Date(c("2020-01-03", "2020-04-28", '2020-03-20'))
pago <- c(315.75, 290, 415.5)
pedidos <- data.frame(clientes, fechas, pago)

save(pedidos, file="../pedidos.Rdata")
save(pedidos, clientes_vip, file="../pedidos_vip.Rdata") # Salvar como Rdata
saveRDS(pedidos, file="../pedidos.rds") # Salvar como rds
head(pedidos)

remove(pedidos, clientes, fechas, clientes_vip, pago) # Borrar objetos de la memoria

load("../pedidos.Rdata") # Cargar Rdata
pedidos_rds <- readRDS("../pedidos.rds") # Cargar rds

data(iris)
data(cars)

save.image(file="../alldata.Rdata") # Guardar todos los objetos de la sesión

# Guardar y cargar una lista de matrices
primes <- c(2,3,5,7,11,13)
pow2 <- c(2,4,8,16,32,64)
save(list=c("primes", "pow2"), file="../primes_and_pow2.Rdata")
load("../primes_and_pow2.Rdata")
attach("../primes_and_pow2.Rdata") # No reescribe objetos en memoria

data() # Proporciona información sobre los datasets de R
