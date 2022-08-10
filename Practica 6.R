##Universidad Autonoma de Aguascalientes
##Departamento: Ciencias de la computación
##Carrera  Ingenieria en Computacion Inteligente
##Curso Intersemestral: Lneguaje de Ciencia de Datos (Julio-2022)
##Alumno:Jesús Alejandro Martínez Martínez
##Maestro: Dr. Francisco Javir Luna Rosas 
##
## Actividad 6
##
# Graficos en Lenguaje R 2
#
#
### Diagramas de caja (BOx plot)
boxplot(Sepal.Length~ Species, data= iris, ylab = "Largo Sepalo (cm)", main= "Medidas en la tabla de iris", boxwex = 0.5, col= "red")

# Graficando la matriz de correlaciones de los datos de iris
## install.packages ("ellipse")
# Los datos de iris
iris
head(iris)
tail(iris)
library(ellipse)

## Diagrama de correlacion
correlation <- cor(iris[,-5])
plotcorr(correlation, col = "red")


#install.packages("corrplot")
library(corrplot)
corrplot(correlation)
col <- colorRampPalette(c("#BB4444","#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
corrplot(correlation, method = "shade", shade.col = NA, t1.col = "black", 
         t1.srt = 45, col = col(200), addCoef.col = "black", order = "AOE")
#Histograma gris
hist(iris$Sepal.Length)
#Histograma verde
hist(iris$Sepal.Length, col = 3)
#Plot
plot(density(iris$Sepal.Length))
#Grafica de Pie
pie(table(iris$Species))
#Grafica de barras verde
barplot(table(iris$Species),col= "green")
#Grafico de cajas disitintos colores
boxplot(Sepal.Length~Species, data= iris, col = c("red","blue","green"))
#Grafico puntos
with(iris,plot(Sepal.Length,Sepal.Width, col = Species,pch=as.numeric(Species)))
#Paris
pairs (iris)
#Paris colores
pairs(iris[1:4], main = "Datos de Iris",pch = 21,bg=c("red","blue", "green"),
      unclass(iris$Species))


library (scatterplot3d)
scatterplot3d(iris$Petal.Width, iris$Sepal.Length, iris$Sepal.Width)
setwd("C:/Users/Alex/Desktop/Universidad/Cursos/Luna Ciencia de Datos")
lluvia <- read.table("cityrain.csv",header = TRUE, sep =",",dec =".",row.names = 1)
lluvia
#Plot con puntos
plot(lluvia$Tokyo,type="b",lwd=2,xaxt="n",ylim=c(0,300),col="black",xlab="Mes", ylab="Caida de lluvia(mm)",
     main="caída de lluevia en ciudades importantes")
#Poner etiquetas
axis(1,at=1:length(row.names(lluvia)),labels = row.names(lluvia))
#Poner linea roja de Berlin
lines(lluvia$Berlin,col="red",type="b",lwd=2)
#Poner linea naranje de NewYork
lines(lluvia$NewYork,col="orange",type="b",lwd=2)
#Pone linea morada Londres
lines(lluvia$London,col="purple",type="b",lwd=2)
#Pone leyendas en el grafico
legend("topright",legend = c("Tokyo","Berlin","New York","London")
       ,lty = 1,lwd = 2,pch = 21,col = c("black","red","orange","purple"),ncol = 2,
       bty = "n",cex =0.8,text.col =c("black","red","orange","purple"),inset = 0.01)