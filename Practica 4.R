##Universidad Autonoma de Aguascalientes
##Departamento: Ciencias de la computación
##Carrera  Ingenieria en Computacion Inteligente
##Curso Intersemestral: Lneguaje de Ciencia de Datos (Julio-2022)
##Alumno:Jesús Alejandro Martínez Martínez
##Maestro: Dr. Francisco Javir Luna Rosas 
##
## Actividad 4
##
## 2 algoritmos: Naivebayes & Rpart 

#
# NaiveBayes
#

## Instala y llama a la libreria e1071
## install.packages('e1071',dependencies=TRUE)
library(e1071)

## llama al directorio
setwd("C:/Users/Alex/Desktop/Universidad/Cursos/Luna Ciencia de Datos")

## Se borran las variables de la memoria 
rm(list = ls(all = TRUE)) .

## Llama al documento tumores. csv, sep lo que lo separa, dec su decimal y header tiene encabezado
datos<-read.csv("tumores.csv",sep = ",",dec='.',header=T)
datos

## Muestra  (de 1 a 1000 y toma 300 datos)
muestra <- sample(1:1000,300)
muestra

## Los datos que se usan para sacar la prediccion
ttesting <- datos[muestra,]
ttesting

## Sacamos tabla para comporbar resultado
taprendizaje <- datos[-muestra,]
taprendizaje

## Entrena NaiveBayes
modelo <- naiveBayes(tipo~.,data=taprendizaje, size=6, rang= 0.1)
modelo

## Prediccion
prediccion <- predict(modelo, ttesting[,-18])
prediccion

## Matriz de Confusion
MC <- table(ttesting[,18],prediccion)
MC

## Acierto
acierto<-(sum(diag(MC)))/sum(MC)
acierto

## Error
error<-1-acierto
error


#
## Rpart
#

## Instala y llama a la libreria rpart
# install.packages('rpart',dependecies=TRUE)
library(rpart)

## Llama al directorio
setwd("C:/Users/Alex/Desktop/Universidad/Cursos/Luna Ciencia de Datos")

## Se borran las variables de la memoria
rm(list = ls(all = TRUE))  

## Llama al documento iris. csv, sep lo que lo separa, dec su decimal y header tiene encabezado
datos<- read.table("iris.csv", sep = ";",dec = '.', header = T)
datos

## Dimenciones de los datos
dim(datos)


head(datos)
summary(datos)

## Muestra  (de 1 a 105 y toma 45 datos)
muestra <- sample(1:105,50)

## Los datos que se usan para sacar la prediccion
ttesting <- datos [muestra,]

## Sacamos tabla para comporbar resultado
taprendizaje <- datos[-muestra,]

## Entrena Rpart
modelo <- rpart(tipo~.,data= taprendizaje)
modelo

## Prediccion
prediccion <- predict(modelo, ttesting, type= 'class')
prediccion

## Matriz de Confusion
MC <- table(ttesting$tipo,prediccion)
MC

## Aciertos
acierto <- (sum(diag(MC)))/sum(MC)
acierto

## Error
error <- 1-acierto
error

## Se borran las variables de la memoria
rm(list = ls(all = TRUE))  
