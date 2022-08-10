##Universidad Autonoma de Aguascalientes
##Departamento: Ciencias de la computación
##Carrera  Ingenieria en Computacion Inteligente
##Curso Intersemestral: Lneguaje de Ciencia de Datos (Julio-2022)
##Alumno:Jesús Alejandro Martínez Martínez
##Maestro: Dr. Francisco Javir Luna Rosas 
##
## Actividad 5
##
# Graficos en Lenguaje R
#
# En esta presentacion estudiaremos la construccion de graficos en R, usando los graficos estandar y el paquete
#"ggplot"
#
# El comando plot()

x <- runif(50,0,4) #50 numeros que siguen la normal entre 0 y 4
y <- runif(50,0,4) 
plot(x,y,main = "Titulo Principal", sub = "Subtitulo",
     xlab = "Etiqueta en eleje X", ylab = "Etiqueta en el eje Y",
     xlim = c(-1,5), ylim = c(1,5), col="red")
##
# Graficos en Lenguaje R
#
# En esta presentacion estudiaremos la construccion de graficos en R, usando los graficos estandar y el paquete
# "ggplot"
#
# El comando plot()

z <- cbind(x,y)
plot (z)
plot(y~x, col="red") #y~x se conoce como una fórmula en R
plot(log(y+1) ~ x, col="red") #transformación de y
plot(x,y, type = "p")
plot(x,y, type = "l")
plot(x,y, type = "b")

plot(c(1,5),c(1,5))
legend(1,4, c("uno","dos","tres"), lty = 1:3,
            col= c("red","blue","green"),pch = 15:17, cex = 2)
# En R los graficos se basan en un "plot" y luego se van agregando 
# elementos
plot(1:10,1:10, axes = FALSE, xlab = "", ylab = "")
polygon(runif(4,1,10), runif(4,1,10), col = "lightblue")
points(runif(5,1,10), runif(5,1,10), cex = 1.5, col = "red")
points( runif(5,1,10), runif(5,1,10), pch = "+", cex =1.7, col = "green")
lines(1:10, runif(10,1,10), lty= 2, lwd=2)
text(runif(5,1,10), runif(5,1,10), labels = c("uno","dos","tres","cuatro","cinco"), cex = 1.7,
     col=rainbow(5))
abline(h=5, lty=4)
title("Grafico Variado")
axis(1, labels = c("uno","tres", "cinco", "siete", "nueve" ), at= seq(1,10,by=2))
axis(2,labels = 1:10,at=1:10)
legend(7,4, lty = c(1:3), col = rainbow(3), 
       legend = c("uno","dos","tres"))

# Lego de hacer un graficocon el comando plot() se puede agregar sobre el mismo
# una gran cantodad de nuevos elementos. los princiales son:

#Points(x,y, ...)
#lines(x,y, ...)
#text(x,y, ...)
#abline(a,b, ...) agrega la recta y = a+bx
#abline(h=y, ...) agrega una linea horizontal
#abline(v=y, ...) agrega una linea vertical
#polygon(x,y, ...) agrega un poligono cerrado relleno
#segments)x0,y0,x1,y1, ...) agrega un segmento
#arrows(x0,y0,x1,y1) dibuja flechas
#symbols(x,y, ...) dibuja circulos, rectangulos, etc
#legend(x,y,legend, ...) agrega un rótulo

x <- runif(50, 0,4)
y <- runif(50, 0,4)
plot(x,y, main = "Titulo pricipal", sub = "subtitulo ",
     xlab= "Etiqueta del Eje X", ylab = "Etiqueta del Eje Y",
     xlim = c(-1, 5), ylim = c(1,5), col = "blue")
abline(h=2, lty=1)
abline(v=0, lty=2)

text(1,4, "Algo de texto")
text(4,4, "Algo de texto")
mtext("un texto", side=1 )
mtext("un texto en tamaño 2",side=2, line =-1, cex= 2 )

# Tipos de puntos en un plot con los comandos plot: pch, col, lty
plot(x,y, type = "n")
points(x,y,pch = 3, col="red")
plot(c(1,10), c(1,3), type = "n", axes = FALSE, xlab = "", ylab = "")
points(1:10, rep(1,10), pch = 1:10, cex = 2, col = "blue")
points(1:10, rep(2,10), pch = 11:10, cex = 2, col = "red")
points(1:10, rep(3,10), pch = 21:10, cex = 2, col = "green")

# Múltiples gráficos por ventana
#
# Podemos mostrar muchos graficos en el mismo dispositivo gráfico
# usando la función (mfrow=c(filas, columnas)) como se ilustra 
# a continuación: 
par(mfrow= c(2,2)) #Define una malla de 2x2  para los gradicos 
plot(rnorm(10))
plot(runif(5),runif(5))
plot(runif(10))
plot(rnorm(10), rnorm(10))
par(mfrow=c(1,1)) # regresa a graficar una por hoja

#   Bar charts y dot charts 
#
# La tabla "VADeaths"(que viene en R) Contiene las tasas de mortalidad
# (numero de defunciones por cada 1000) habitantes por año en diferentes 
# subpoblaciones dentro del estado de Virginia en 1940.
VADeaths
barplot(VADeaths, beside = TRUE, legend = TRUE, ylim = c(0,90),
        ylab = "Muestra por casa 100", 
        main= "Tasas de Mortalidad en virginia")
dotchart(VADeaths,xlim = c(0,75),
        ylab = "Muestra por casa 100", 
        main= "Tasas de Mortalidad en virginia")

# Graficos circulares "Pie charts"
grupos <- c(18,30,32,10,10)
etiquetas <- c("A","B","C","D","F")
pie(grupos, etiquetas, col = c("red","blue","green","yellow","orange" ))

#Histograma
x<- rnorm(100)
hist(x, col = "blue")
