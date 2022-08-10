##Universidad Autonoma de Aguascalientes
##Departamento: Ciencias de la computación
##Carrera  Ingenieria en Computacion Inteligente
##Curso Intersemestral: Lneguaje de Ciencia de Datos (Julio-2022)
##Alumno:
##Maestro: Dr. Francisco Javir Luna Rosas 
##
##Actividad 2
##
#Progrmacion en lenguaje R 
#
#Variables globales y asignación
#
#Es ´psoble asignar una varibale global con el operador <- o el operador =.
#
#usando el operador <-.
tasa.interes <- 0.3
tasa.interes
#[1] 0.3
#usando el operador =.
tasa.interes = 0.3
tasa.interes
#[1] 0.3

balance.inicial <-3000
balance.final <- balance.inicial * tasa.interes+balance.inicial
balance.final
#[1] 3900

#Ejemplo
#
#Una persona desea sacar un prestamo, de P pesos a una tasa de interes mensual i
#El prestamos tiene que ser reenbolsado a n cuotas mensauales de tamaño R, comensando
#dentro del un mes. El problema es calcular R. La formula es: 
#
#R = P (i/[1-(1+i)exp -n])
#
#Supongamos que P = 150000, que la tasa de interes es el 2% y que el número de 
#pagos es 10.El código en R seria?: 
#
P <- 150000
n <- 10
i <- 0.02
pago = P*(i/(1-(1+i)^(-n)))
pago
#[1] 16698.98
#
#    R es sensible a mayúsculas y minúsculas (case-sensitive)
#
x<-1:10
x
mean(x)

#La siguiente instruccion da error 
#
#MEAN(x
#
#     Listando los objetos en el "Workspace" (variables globales)
#
objects()
#
#     Tipos de datos y objetos de R
#
#En el lenguaje R, los elementos u objetos que se vayan definiendo, bien por 
#nosotros mismos, bien como resultado de un programa, pueden y deben ser
#distinguidos para su uso correcto. Concrtamente, vamos a hablar de: 
#
#vectores, matrices, factores, hojas de datos(data frames),listas, etc.
#
#     Vectores 
#
# Un vector en R puede contener una colección de numeros o de caracteres 
# no numméricos. Para definir un vector, por ejemplo, el vector x = (1, 3, 5),
# usaremos el comando de concatenación "C".v

X<-c(1,3,5)
x
# Asi podemos llamar al vector x en el futuro. Observemos que se utiliza eloperador
# asignacion <- no el operador =, porejemplo, el vector x=(1,3,5), utilizamos el comando
# de concatenacion "c".
#
#asi podemos cambiar el vector x en el futuro observemos qe se utiliza el operador <- y no el =, se reserva para otro tipo de definiciones
#observemos tambien que es la funcion de concatenacion c(), la que construye el vector
# tambien es posible definir un vector de numeros consecutivos por ejemplo el vector  (1,2,3,4,5) mediante 1:5
#De forma mas general la funcion secuencia permite generar secuencias desde el inicio hasta n con una determinada separacion
#entre ellos por Ejemplo: 
y <- seq(-3,3,0.5)
y

#Es para definir vectores util la funcion rep() para definir vectores como la repeticion de otros vectores
#Ejemplo: rep(0,100) devolveria un vector de 100 ceros o tambien rep(1:3,3) devolveria 
re <- rep(1:3,3)
re
#Longitud de un vector
#
#Si queremos saber la longitud de un vector , usaremos legth() por ejemplo:
x <- c(1,6,2)
x
y <- c(1,4,3)
y
length(x)
length(y)
x+y
media <- sum(x)/length(x)
media
#No hay problema si un vecto en lugar de inluir numero inclyecaracteres,
#simpre que éstos ésten entre comillas.Por ejemplo, podríamos definir el 
#vector:

genero <- c("Mujer","Hombre")
genero

#Genero vectores que sigan una distribución de probabilidad y algunas
#operaciones estadisticas básicas.

x = rnorm(50)
x

y = rnorm(100)
y
#media de y
mean (y)
#Varianza de de y
var(y) 
#Raiz cuadrada 
sqrt(var(y))
#La desviacion estandar 
sd(y)

#Indecando un vector
#
x <- c(90,98,-10,22,-9,-55,10,230)
x[1]
x[3]
x[3:5]

#con indices negativos se establece cuales entradas no estarán en el resultado
#
x[-1]
x[-3]

#operadores relacioneales <,>,==,>=,<=,!=
#
a <- c(3,6,9,2,-5)
a>4
a==4
a>=4
a!=4
a[a>4] # dame los valores donde a sea mayor que el valor anterior de a

b<- c(4,6,8,12,-2)
a<b
a[a<b] #dame los valores donde a sea menor que b

#operaciones Lógicas 
#
#& y | son los operadores de "y(and)" y "o(or)", respectivamente, por ejemplo: 
a[a<b & a<0]
a[a<0 | a>=6]

#
#Seleccion condicionada de un vector
#

x<-c(90, 98, -10, 22, -9, -55, 10, 230)
x

#
#Extrae los negativos
#

es.negativo <- x<0
es.negativo

#
#menor a 0 
#

menores.cero <- x[es.negativo]
menores.cero

#
#Extraemos los numero pares
#

es.par <- (x%%2)==0
es.par
pares <- x[es.par]
pares

#
#Extraer los pares y negativos
#

par.neg <- x[es.par & es.negativo]
par.neg

#
#Extraer los pares o negativos
#

par.o.neg <- x[es.par || es.negativo]
par.o.neg

#
#Aritmetica de vectores
#

x <- c(90, 98, -10, 22, -9, -55, 10, 230)
x
y<- c(0, -98, 45, -3, 1, -4, 11, 23)
y
x+y
2*x
x-5
x^3
x^y

#
#Valores Ausentes
#

vector <- NULL #Crea un vector sin elementos
vector
vector[seq(2,20,2)] <- seq(2,20,2)
vector
vector + vector
3* vector 

x <- c(0, 3, 4, 2)
x/x
1/x

