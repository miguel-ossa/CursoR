# Lectura de ficheros FWF
setwd("D:/Documents/Estudios/Estudios MOOC/Udemy/CursoR/r-course/data/tema1/scripts")
options(width=100)
options(digits=20)

students.data <- read.fwf("../student-fwf.txt",
                          widths=c(4, 15, 20, 15, 4),
                          col.names=c("id", "nombre", "email", "carrera", "año"))
students.data.header <- read.fwf("../student-fwf-header.txt",
                              widths=c(4, 15, 20, 15, 4),
                              header=T, sep="\t",
                              skip=2)
students.data.no_email <- read.fwf("../student-fwf.txt",
                          widths=c(4, 15, -20, 15, 4),
                          col.names=c("id", "nombre", "carrera", "año"))
head(students.data, 3)
head(students.data.header, 3)
head(students.data.no_email, 3)
