# Lectura de ficheros XML
setwd("D:/Documents/Estudios/Estudios MOOC/Udemy/CursoR/r-course/data/tema1/scripts")
options(width=100)
options(digits=20)

install.packages("XML")
library(XML)

url <- "../cd_catalog.xml"

xmldoc <- xmlParse(url) # XMLInternalDocument
rootnode <- xmlRoot(xmldoc)
rootnode[1]

cds_data <- xmlSApply(rootnode, function(x) xmlSApply(x, xmlValue))
cds.catalog <- data.frame(t(cds_data), row.names=NULL) # transposición
head(cds.catalog, 2)
cds.catalog[1:5,]

# xpathSApply()
# getNodeSet()

population_url <- "../WorldPopulation-wiki.htm"
tables <- readHTMLTable(population_url)
most_populated <- tables[[6]]
head(most_populated, 3)

custom_table <- readHTMLTable(population_url, which = 6)


url_CSSEGISandData <- "../covid-04-17-2020.csv"
covid <- readHTMLTable(url_CSSEGISandData)
head(covid,3)
