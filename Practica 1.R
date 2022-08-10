#Programacion en Lenguaje R 
#
#Es este documento se presenta una introduccion al paqite R, especialmente 
#orientado a su lenguaje de programacion, con enfasis en aplicaciones de Machine
#Learning
#
#La Consola y el editor de R 
#
#Lo primero que nos aparece es una ventana, tambien llamada consola, donde podemos
#manejar R mediante la introducción de de codigo. Por ejemplo podemos escribir 2+2 
#en ella, pulsando intro, lo que nos devolvera en la misma consola el valor de 4
#
#sin enbargo esta no es la menera mas eficiente de trabajar en R.
#Cudno estemos realizando un trabajo de mediana complejidad, será muy útil manejar 
#todas las entradas que solicitemos a R en un entorno donde podamos corregirlas,
#retocarlas, repetirlas, guardarlas para continuar el trabajo en otro momento. Para 
#esto se puede utlilizar el editor de R, pero ,ejor aun podemos utlizar Rstudio, como 
#se muestra a continuacion.
#
#Ejecuciones de instrucciones y comentario en R.
#
#Es posible incluir comentarios que R no leera si utlizamos lineas que comiencen con el 
#caracter #.Por el contrario, si escribimos cialquier orden no antecedida de # y 
#queremos solicitar la respuesta a R, podemos hacerlo mediante el botón "Run" en Rstudio
#La utlidad de un script o guion de trabajo radica en que podemos modificar nuestras 
#lineas de codigo con comodidad y guardarlas para el futuro.
#
#             Solicitando ayuda a R 
#
# para padir ayuda a R se hace mediante el simbolo signo de interrogacion antes del comando
#respectivo, por ejemplo para pedir ayuda para el comando matrix se hace como sigue;?matrix
# 
#             Cálculo Basicos en R
#
#Potencias 
3^4
#[1] 81
#
#Residuo entero de una divicion
#
31 %% 7
#[1] 3
#
#   Operaciones basicas
7*4+3
#[1] 31
pi * 2^3- sqrt(4)
#23.13274
abs(12-17*2/3-9)
#8.333333
factorial(4)
#[1] 24
log(2,10)
#[1] 0.30103
abs(12-17*2/3-9)
#[1] 8.333333
factorial(4)
#[1] 24
log(2,10)
#[1] 0.30103
sin(45 * pi/180)
#[1] 0.7071068
#
#Leyendo un archivo *.csv
#
#Por ejemplo, para instroducior en un "Data Frama" la Tabla de Datos de estudiantes.
#
#Comando para establecer el directorio de trabajo 
#
setwd("C:/Users/Alex/Desktop/Universidad/Cursos/Luna Ciencia de Datos")
Datos <- read.table("EjemploEstudiantes.csv", header = TRUE, sep = ";" , dec = "," , row.names = 1)
Datos
#
#Exploración inicial de los datos 
#
str(Datos)
#
#Utilizando un summary 
#
summary(Datos)
#
#caculando estadisticas basicas sobre esos datos
#
#Calcula la media para cada una de las variables del Dataset
#
mean(Datos$Matematicas) #la media de Matematicas
mean(Datos$Ciencias) #la media de Ciencias
mean(Datos$Espanol) #la media de Español
mean(Datos$Historia) #la media de Historia
mean(Datos$EdFisica) #la media de EdFisica
#
#Calcula la desviación estándar para cada una de las variables del Dataset
#
sd(Datos$Matematicas) #la desviación estándar de Matematicas
sd(Datos$Ciencias) #la desviación estándar de Ciencias
sd(Datos$Espanol) #la desviación estándar de Español
sd(Datos$Historia) #la desviación estándar de Historia
sd(Datos$EdFisica) #la desviación estándar de EdFisica
#
#Calcula la correlación para cada una de las variables del Dataset
#
cor(Datos$Matematicas, Datos$Ciencias) #la correlación de Matematicas vs Ciencias
cor(Datos$Ciencias, Datos$Espanol) #la correlación de Ciencias vs Español
cor(Datos$Espanol, Datos$Historia) #la correlación de Español vs Hostoria
cor(Datos$Historia, Datos$EdFisica) #la correlación de Historia vs EdFisica
cor(Datos$EdFisica, Datos$Matematicas) #la correlación de EdFisica vs Matematicas
#
#Calcula la mediana para cada una de las variables del Dataset
#
median(Datos$Matematicas) #la mediana de Matematicas
median(Datos$Ciencias) #la mediana de Ciencias
median(Datos$Espanol) #la mediana de Español
median(Datos$Historia) #la mediana de Historia
median(Datos$EdFisica) #la mediana de EdFisica
#
#Calcula el maximo para cada una de las variables del Dataset
#
max(Datos$Matematicas) #el maximo de Matematicas
max(Datos$Ciencias) #el maximo de Ciencias
max(Datos$Espanol) #el maximo de Español
max(Datos$Historia) #el maximo de Historia
max(Datos$EdFisica) #el maximo de EdFisica
#
#Calcula el minimo para cada una de las variables del Dataset
#
min(Datos$Matematicas) #el minimo de Matematicas
min(Datos$Ciencias) #el minimo de Ciencias
min(Datos$Espanol) #el minimo de Español
min(Datos$Historia) #el minimo de Historia
min(Datos$EdFisica) #el minimo de EdFisica

#Paquetes 
#
#El pproecto R (CRAN) CENTA CON MAS DE 4821 PAQUETES DISPONIBLES, ESTOS PAQUETES
#APMPPLIAN ENORMENMENTE LA CAPACIDAD DE CALCULO EN r.
#ESTOS PUEDEN VERSE EN: http//cran.r-project.org
#
#Un paquete se instala con la siguiente instruccion:
#
#install.packages("nombre_paquete",dependencies=TRUE)
#
#ESTAREMOS UTILIZANDO LOS SIGUIENTES PAQUETES:
#
#install.packages("rattle",dependencies=TRUE) #==> mineria de datos
#install.packages("ggplot2",dependencies=TRUE) #==> graficar
#install.packages("scales",dependencies=TRUE) #==> hacer escalas
#install.packages("MASS",dependencies=TRUE) #==> operaciones
#install.packages("tree",dependencies=TRUE) #==> construir arboles
#install.packages("rpart",dependencies=TRUE) #==> construir arboles
#install.packages("e1071",dependencies=TRUE) #==> analisisd de clases
#install.packages("randomForest",dependencies=TRUE) #==> 
#install.packages("kknn",dependencies=TRUE) #==> 
#install.packages("FactoMineR",dependencies=TRUE)#===> Clustering 
#install.packages(c("Factoshiny","missMDA","FactoInvestigate")) #paquetes complementario de FactoMineR
library(Factoshiny)
library(missMDA)
library(FactoInvestigate)
library(FactoMineR)

setwd("C:/Users/Alex/Desktop/Universidad/Cursos/Luna Ciencia de Datos")
Datos<- read.table("EjemploEstudiantes.csv", header = TRUE, sep = ";", dec = ",", row.names = 1)
Datos
res<-PCA(Datos, scale.unit = TRUE, ncp=5, graph = FALSE)
res
plot(res,axes =c(1,2), choix = "ind", col.ind = "red", new.plot = TRUE)
plot(res,axes =c(1,2), choix = "var", col.ind = "blue", new.plot = TRUE) #este se corre por separado para que se imprima
#
#Clustering jerarquico
#
#method = "complete" usando la agrgacion del salto maximo
setwd("C:/Users/Alex/Desktop/Universidad/Cursos/Luna Ciencia de Datos")
Datos<- read.table("EjemploEstudiantes.csv", header = TRUE, sep = ";", dec = ",", row.names = 1)
Datos
modelo<- hclust(dist(Datos),method ="complete")
plot(modelo)
plot(modelo, hang= -1)
#La siguientes instruccion separa los cluster usando 3 
rect.hclust(modelo, k=3, border="red")
#
#method = "single" Usando la agregacion del Salto M???nimo
#
modelo <- hclust(dist(Datos),method = "single")
plot(modelo)
plot(modelo,hang = -1)
rect.hclust(modelo, k=3, border="blue")
#
#method = "single" Usando la agregacion del Promedio
#
modelo <- hclust(dist(Datos),method = "average")
plot(modelo)
plot(modelo,hang = -1)
rect.hclust(modelo, k=3, border="green")
#
#method= "ward" Usando la agregacion de Ward
#
modelo <- hclust(dist(Datos),method= "ward.D")
plot(modelo)
plot(modelo,hang = -1)
rect.hclust(modelo, k=3, border="magenta")