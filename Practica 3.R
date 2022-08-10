##Universidad Autonoma de Aguascalientes
##Departamento: Ciencias de la computación
##Carrera  Ingenieria en Computacion Inteligente
##Curso Intersemestral: Lneguaje de Ciencia de Datos (Julio-2022)
##Alumno:Jesús Alejandro Martínez Martínez
##Maestro: Dr. Francisco Javir Luna Rosas 
##
##Actividad 3
##
#Progrmacion en lenguaje R 
#
## 2.OBJETOS EN r (Matrices)

### Una matriz se define mediante funcionnn matrix() a la que hay que especificarle los elementos y la dimencion. Por ejemplo, para definir la matriz:
### Se hace usando:

matriz <- matrix(c(1,2,3,4,5,6,7,8,9,0,0,-1),4,3)
matriz

### Las dimenciones (no. de filas y columnas) de la matriz pueden obtenerse mediante la funcion dim(). Por ejempli, dim (matriz) proporcionaria el valor de 4 3. Si quermos llegar a elementos comcretos de una matriz lo haremos utilizando corchetes para indicar los renglones y las columnas. Por ejemplo, matriz [2,3] devolveria el valor 0, matriz [1:2, 2:3] devolveria filas 1-2 en las columnas 2-3. Y la instruccion Matriz [,c (1,3)] devuelve una matriz con las columnas 1 y 3, como sigue:

dim(matriz)
matriz[2,3]
matriz[1:2,2:3]
matriz [,c (1,3)]

### Por otra parte, tanto para vectores como para matrics, funcionan las operaciones suma y diferencia sin mas complicaciones. En el caso del producto, sin embargo, hay que clarificar que, por ejemplo, matriz * matriz devuelve la multiplicacion elemento 

matriz*matriz

### Mientras que amtriz %% matriz si deevuelve el producto matricial, esto es : 

# La siguiente instruccion 
# da error porque no se puede multiplicar una matriz 4x3 por una matriz 4x3
# matriz %*% matriz

matriz2 <- matrix (c(1,2,3,4,5,6),3 , 2)
dim(matriz2)
matriz2

res <- matriz%*%matriz2
res
dim(res)

#
# aplicando funciones a matrices 
#
x = matrix (data=c(1,2,3,4), nrow=2, ncol=2)
x
x = matrix (c(1,2,3,4),2,2)
matrix (c(1,2,3,4), 2,2, byrow = TRUE)
x
sqrt(x)

#
# Combianando matrices
#
#
# La funciones cbind() se ppuede usar para unir dos o mas 
# vectores o matrices, por columna o por fila, respectivamente.
# Los siguientes ejemplos deben ilustrar esto :

m1 <- matrix(c(45,23,66,77,33,44,56,12,78,23),2,5)
m1
cbind(c(4,76), m1 [,4])
m2 <- matrix(rep(10,20,4,5))
m2
m3 <- rbind(m1[1,], m2[3,])
#
# Factores (Manejo de variables)
#
# Los factores sonnnun tipo especial de vectores que permiten analizar
# Varibales estadisticas y de mineria de datos cultivas nominales
# u ordinales (como veremos mas adelante en el curso). Por ejemplo,
# el pais cuyas modalidades o posibles valores son: "Panama", "Nicaragua",
# "Costa Rica", "Honduras", "El Salvador", "Guatemala", "Belice". EN R se 
# Podria tener, lo siguiente:

pais <- factor(c("Honduras", "Costa Rica", "Honduras", "Belice", "Nicaragua"))
pais

#
# Visto como una tabla estadistica o de mineria de datos seria: 
#
# Individuo        Pais
# 1                Honduras
# 2                Costa Rica
# 3                Honduras
# 4                Belice
# 5                Nicaragua
#
# O bien, aun mejor le podriamos establecer niveles con la varibale levels
#
pais2<- factor(c("Honduras", "Costa Rica", "Honduras", "Belice", "Nicaragua"))
levels= c("Panama", "Costa Rica", "Nicaragua", "Honduras", "El Salvador", 
          "Guaremala", "Belice")
pais2

# Otro ejemplo 

Sexo <- c("Hombre","Mujer","Mujer","Mujer","Hombre","Mujer")
factor(Sexo)

#
# Hoja de Datos (Data Frame)
#
# Las Hojas de datos constituyen la manera mas eficiente mediante la cual 
# puede analizar un conjunto de datos estadisticos. Habitualmente se 
# configura de tal manera que cada fila se refiera a un individuo o 
# unidad estadistica, mientras que cada columna hace referencia a una
# variable estadistica.
#
# Esa configuración hace que visualmente una hoja de datos parezca una 
# matriz, sin embargo, ocmo objetos de R, son cosas distintas. Vamo a ver 
# como se construye una hoja de datos con los datos de 3 personas, que 
# incluye color de ojos, su peso, su altura como factores (variables
# estadisticas). Empezando definiendo el color de los ojos:
ojos <- factor(c("Azules", "Marrones", "Marrones"), levels 
              = c("Azules", "Marrones", "verdes", "Negros"))
ojos 

# Supongamos que los pesos y las alturas son, respectivamente, 68, 75,
# 88 y 1.65, 1.79, y 1.85. Entonces defnimos las hojas de datos 
# mediante lo siguiente:

datos <- data.frame(color.ojos = ojos, peso = c(68, 75, 88), Altura= c(1.65, 1.79, 1.85))
datos

# Asi tenemos tres variables, llamadas color.ojos, Peso y Altura.
# Podemos forzar que una matriz se convierta en una hoja de datos mediante la
# funcion a.data.frame. Por ejemplo las sigueinte instruccion convierta matriz en
# unahoja de datos

datos2<- as.data.frame(matriz)
datos2

# Siponemos nemes(datos2) veremos los nombres que para las variables ha elegido
# por defecto R

names(datos2)

# si queremos modificar esos nombres de las variables, podemos usar de nuevo la
# la funcion names(), forzando la asignacoin

names(datos2) <- c ("Variable 1", "Variable 2", "Variable3")
datos2

# La manera en que podemos acceder a los elementos de una hoja de datos
# es doble

# 1. Podemos usar el mismo método que para las matrices.
# 2. Podemos utilizar el operador de $, de la siguiente manera. Para
# obtener los datos de la variable color.ojos, por ejemplo, escribimos:

datos$color.ojos

# Para saber el numero de filas y de columnas de una hoja de datos
# utilizaremos las funciones nrow () y ncol(). Por ejemplo, ncol(datos)
# es 3

ncol(datos)
nrow(datos)

# ¿Que ocurre si no estamos seguros de si un objeto de R es una hoja de 
# datos o una matriz?

# Existen funciones que nos informan sobre el tipo de los objetos. En el 
# caso que nos ocupa, is.vector(), is.matrix(), e is.data.frame(). Así
# por ejemplo, is.data.frame(matriz) devolvera False, mientras que 
# is.data.frame(datos2) devolverá TRUE. O bien se puede utilizar el operador 
# class que devuelve directamente la clase a la que pertenece el objeto
# o instancia. Por ejemplo:

class(matriz)
class(datos2)

#
#   LISTAS
#
# Como ejemplo, considere una base de datos de empleados. Supongamos que 
# por cada empleado se almacena el nombre, salario y un booleano que indica 
# pertenencia o no al grupo(unión) de empleados. Podriamos iniciar nuestra 
# base de datos en vacío como sigue: 

j <- list()

# Para insertar el primer empleado se puede hacer lo siguiente:

j <- list(nombre="Luis", salario= 55000, union=TRUE)
j

# En realidad, los nombres de los elementos, por ejemplo, "salario", son 
# opcionale. Uno tmbien podria hacerlo de la siguiente manera: 

j2 <- list("Luis", 55000, T)
j2

# Los nombres de los elementos en una lista se llaman "tags". Esos se pueden
# Obtener con el operador "names()": 

names(j)

# Para obtener los valores se usa unlist():

ulj <- unlist(j)
ulj

# El retorno de "unlist()" es un vector modo caracter, o sea, un vector de 
# "strings".

# Las listas de R tienen cierta semejanza a los  "struct" de lenguaje C, 
# definamos, por ejemplo, una lista x con 2 elementos

x<- list(abc="Luis", de=5)
x

# Asi la lsita x tiene 2 elementos : 

x$abc
x$de

# O sea el operador "$" en R funciona como el operador "." en C 

names(x)
ulx <- unlist(x)
x

class(ulx)

# El simbolo $ se utiliza para designar elementos con nombre de una lista
# pero tambien [[]], trabaja para hacer referencia a un solo elemento.

# Recordemos que j esta definido por j <- list(nombre ="Luis", salario=55000
# ,union=TRUE), enotnces:

j <- list(nombre="Luis", salario= 55000, union=TRUE)
j 
j$nombre
j$salario
j$union
j[[1]]
j[[2]]
j[[3]]

#
# Funciones más comunes en R 
#
# En este apartado se destacan algunas funciones de R que se usan en el resto 
# de este curso. Por ejemplo: 
#
# sum() proporciona la suma de los elementos del argumento.Así, teneinedo 
# en cuenta que x <- (1,3,5), sum (x) daria el valor de 9
#
# cumsum() proporciona un vector con la suma acumulada del vector argumento
# por ejemplo, cumsum(X) daria: 1, 4, 9

# rowSums() y colSum() suma, por filas y por columnas, respeectivamente, los
# datos de una hoja de datos.
#
# prod() y cumprod() son equivalentes a sum() cumsum() para el producto.
#
# sqrt() es una funcion de raiz cuadrada.
#
# log() es la funcino de logaritmo natural o neperiano
#
# log10() es el logaritmo base 10.
#
# exp() es la funcion exponencial
#
# max() min() proporciona el maximo y el minimo de un argumento (habitualmente un vector)
#
# sort() proporciona la ordenacion de un vector de menor a mayor
#
x<- c( 9, 6, 45, 3, -1, 2, -9, 9, 0)
sum(x)
cumsum(x)
max(x)
min(x)

m1 <- matrix(c(45,23,66,77,33,44,56,12,78,23),2,5)
m1
rowSums(m1)
colSums(m1)

#
# Generacion de secuancia aleatorias
#

sample (5)
sample(5,3)

x <- 1:10
x
sample(x)

#
# Manejo de Datos
#
# Introduccion de datos nuevos 
#
# Es una situacion general en la que se tiene informacion sobre "n" individuos,
# que se refiere a k variable. En este caso, ña forma en que la estadistica
# y la mineria de datis se usa para organizar toda esta informacion, es una 
# matriz de dimenciones n*k, en la que cada fila se representa un individuo o
# unidad estadistica y en cada columna se representa una variable. En R se 
# representan mediante DataFrames (hajas de datos).
#
# Introduccion de la hoja de datos (DataFrame) mediante codigo.
#
# Supongamos que tenemos la puntuacion en una prueba escrita x y en una prueba
# oral y , de una muestra de 10 personas y ademas tenemos el genero para cada
# persona. La matriz de datos es la siguiente:
#
# Prueba X        Prueba Y        Genero
#  161             159           "Hombre"
#  203             206            "Mujer"
#  235             241            "Hombre"
#  176             163            "Hombre"
#  201             197            "Hombre"
#  188             193            "Mujer"
#  228             209            "Mujer"
#  211             189            "Mujer"
#  191             169            "Hombre"
#  178             201            "Hombre"
#
# En esta matriz la primer columna corresponde a la variable X, la segunda a la variable Y y la tercera a la variable Genero. Mientras que, por ejemplo la
# fila 4 corresponde a la persona numero 4 de la muestra. En resumen, los 
# individuos estan en las filas y las variabe en las columnas. En R se hace lo 
# siguiente:

x<- c(161, 203, 235, 176, 201, 188, 228, 211, 191, 178)
y<- c(159, 206, 241, 163, 197, 193, 209, 289, 169, 201)
genero<- factor(c("Hombre", "Mujer", "Hombre", "Hombre", "Hombre", "Mujer", 
                  "Mujer", "Mujer", "Hombre", "Hombre"))
Datos.Pruebas<- data.frame(Prueba.escrita= x, Prueba.oral= y, Genero= genero)
Datos.Pruebas

#
# Asi, hemos llegado a la hoja de datos "Datos Pruebas". Por su parte, a la
# primera variable la hemos llamado "Prueba.escrita", la segunda "Prueba.oral"
# y la tercer variable "Genero". Tenemos , por tanto, la hoja de datos que se
# llama "Datos.Pruebas" que, a su vez, contiene 3 variables, "Prueba.escrita".
# "Prueba.Oral" y "Genero"
# Luego podemos poner nombre tambien a las filas como sigue:

row.names(Datos.Pruebas)<-c("Luis", "Maria", "Martha", "Bernal", "Jose", 
                             "Alfredo", "Andrea", "Julian", "Elena", "Margarita")
Datos.Pruebas

# Recordemos que si ahora queremos trabajar con algna de esas tres variables tenemos 2 opciones:
# podemos referirnos a cualquiera de ellas poniendo el nombre de la hoja
# seguido del simbolo del dinero y el nombre de la variable 
# podemos usar el numero de la culumna 

Datos.Pruebas$Prueba.escrtia
Datos.Pruebas[,1]
Datos.Pruebas$Prueba.oral
Datos.Pruebas[,2]
Datos.Pruebas$Genero
Datos.Pruebas[,3]

#
# Podemos aplicar estadistica basica al data frame
#

mean(Datos.Pruebas$Prueba.escrita)
sd(Datos.Pruebas$Prueba.escrita)
cor(Datos.Pruebas$Prueba.escrita, Datos.Pruebas$Prueba.oral)


# Por su parte las filas solo pueden ser manipuladas a traves del numero de fila

Datos.Pruebas[3,]
Datos.Pruebas[8,]

# Introduccion de una hoja de datos (dataframe) desde una archivo *.csv
# 
# Por ejemplo, para introducir en un Dataframe la tabla de adtos de estudiantes
# que se muestra a continuacion:
#
#comando para establecer el directorio de trabajo en Windows
setwd("C:/Users/Alex/Desktop/Universidad/Cursos/Luna Ciencia de Datos")
Datos<- read.table("EjemploEstudiantes.csv", header = TRUE, sep = ";", dec = ",", row.names = 1)
Datos

# Exportar Datos
#
# Se puede guardar en un archivo de texto( TXT o CSV) cualquier juego de datos
# que se tenga en un dataframe

# Comando para establecer el directorio de trabajo en windows
setwd("C:/Users/Alex/Desktop/Universidad/Cursos/Luna Ciencia de Datos")

write.table(Datos, file="Prueba.txt", sep = "|", row.names =FALSE, col.names =TRUE)

#Ejemplo con datos de Servicio al Cliente 
#install.packages("rattle")
library(rattle)
setwd("C:/Users/Alex/Desktop/Universidad/Cursos/Luna Ciencia de Datos")
Datos<- read.table("EjemploClientesCorregidaEdad.csv", header = TRUE, sep = ";", dec = ",", row.names = 1)
Datos

modelo<- hclust(dist(Datos), method= "ward.D2")
plot(modelo)
centros<- centers.hclust(Datos, modelo, nclust=3)
centros
rownames(centros)<- c("Cluster 1", "Cluster 2", "Cluster 3")
barplot(centros[1,], col= c(1,2,3,4,5,6,7,8,9,10,11,12), las=2)
barplot(centros[2,], col= c(1,2,3,4,5,6,7,8,9,10,11,12), las=2)
barplot(centros[3,], col= c(1,2,3,4,5,6,7,8,9,10,11,12), las=2)

barplot(t(centros), beside = TRUE, legend = colnames(Datos), 
        main= "Grafico de interpretacion de Clases",
        col= c(1,2,3,4,5,6,7,8,9,10,11,12), ylim=c(0,60))