# Clase del 2022-04-22

#Funcion para desplegar lista de los conjuntos de datos 
data()

#Funcion para desplegar un conjunto de datos
View(Titanic)

#Ejemplos de Funciones 

print("Hola, mundo")
print("Hola, clase")
print("Hola, Manuel")



#Media Aritmetica 
mean(c(2, 3, 4, 5))

#Directorio de trabajo 
getwd()

#Cambio de directorio de trabajo 
setwd("C:\Users\gf0604-1")


View(cars)


plot(cars)

#Argumentos para titulos en los ejes 

plot(cars, xlab='velocidad(MPH)', ylab="Distancia(pies)")

par(bg = "white")
plot(cars, 
     xlab ='velocidad(MPH)', 
     ylab ="Distancia(pies)",
     main = "Datos de velocidad y distancia de frenado",
     sub = "Fuente de los datos: McNeil, D. R. ",
     pch = 8, 
     cex.main = 2,
     col = "purple")

#paquetes
library(stats)

# Instalación del paquete PASWR2 (note las comillas)
install.packages("PASWR2")


library(PASWR2)


# Visualización del conjunto de datos TITANIC3
View(TITANIC3)

# Cantidades de pasajeros por clase
table(TITANIC3$pclass)
table(TITANIC3$sex)
table(TITANIC3$embarked)
table(TITANIC3$survived)

# Gráfico de barras por clase de pasajero
barplot(
  height=table(TITANIC3$pclass),
  main="Distribución de pasajeros del Titanic por clase",
  xlab = "Clase",
  ylab = "Cantidad de pasajeros")

# Graficos de pasajeros por sexo
barplot(
  height=table(TITANIC3$sex),
  main="Distribución de pasajeros del Titanic por clase",
  xlab = "Sexo",
  ylab = "Cantidad de pasajeros")


# Graficos de pasajeros por sobrevivientes 
barplot(
  height=table(TITANIC3$survived),
  main="Distribución de pasajeros del Titanic por clase",
  xlab = "Sobrevivientes",
  ylab = "Cantidad de pasajeros")

# Cantidades de pasajeros fallecidos y sobrevivientes por clase
table(TITANIC3$survived, TITANIC3$pclass)

# Gráfico de barras apiladas
par(bg = "white")
barplot(
  height = table(TITANIC3$survived, TITANIC3$pclass),
  main = "Distribución de pasajeros fallecidos y sobrevivientes por clase",
  xlab = "Clase",
  ylab = "Cantidad de pasajeros",
  col = c("orange", "yellow"))

# Leyenda
legend(
  x = "topleft",
  inset = 0.03,
  legend = c("Fallecidos", "Sobrevivientes"),
  fill = c("orange", "yellow"),
  horiz = TRUE)

#Diferente Color
par(bg = "white")
barplot(
  height = table(TITANIC3$survived, TITANIC3$pclass),
  main = "Distribución de pasajeros fallecidos y sobrevivientes por clase",
  xlab = "Clase",
  ylab = "Cantidad de pasajeros",
  col = rainbow(2))

# Leyenda
legend(
  x = "topleft",
  inset = 0.03,
  legend = c("Fallecidos", "Sobrevivientes"),
  fill = rainbow(2),
  horiz = TRUE)

# Gráfico de barras agrupadas
barplot(
  height = table(TITANIC3$survived, TITANIC3$pclass),
  main = "Distribución de pasajeros fallecidos y sobrevivientes por clase",
  xlab = "Clase",
  ylab = "Cantidad de pasajeros",  
  col = topo.colors(2),
  beside = TRUE )

# Leyenda
legend(
  x = "topleft",
  inset = 0.03,
  legend = c("Fallecidos", "Sobrevivientes"),
  fill = topo.colors(2),
  horiz = TRUE )

#Ejercicios
#Ejercicio 1
par(bg = "white")
barplot(
  height = table(TITANIC3$survived, TITANIC3$sex),
  main = "Distribución de pasajeros fallecidos y sobrevivientes por sexo",
  xlab = "Sexo",
  ylab = "Cantidad de pasajeros",
  col = c("orange", "red"))

# Leyenda
legend(
  x = "topleft",
  inset = 0.03,
  legend = c("Fallecidos", "Sobrevivientes"),
  fill = c("orange", "red"),
  horiz = TRUE)

#Ejercicio 2
barplot(
  height = table(TITANIC3$survived, TITANIC3$sex),
  main = "Distribución de pasajeros fallecidos y sobrevivientes por sexo",
  xlab = "Sexo",
  ylab = "Cantidad de pasajeros",  
  col = rainbow(2),
  beside = TRUE )

# Leyenda
legend(
  x = "topleft",
  inset = 0.03,
  legend = c("Fallecidos", "Sobrevivientes"),
  fill = rainbow(2),
  horiz = TRUE )


#Tipos de datos
 
#Agrupacion 

x <- 10
x <- 30

50 -> x

x = 100

nombre <- 'Daniela'

dias <- c('Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado')
dias


typeof(x)

typeof(dias)
typeof(nombre)

#Numericos 

#Enteros
edad <- 35L
typeof(edad)

#Double (decimal)
salarios_mensual <-100000
salario_anual <- salarios_mensual * 12
print(salario_anual)
cat("salario_anual:", salarios_mensual)
typeof(salario_anual)

#Caracter 
apellido <- 'Castro'
nombre_completo <- append(nombre, apellido)

#logicos (booleanos)
e <- 10 > 20 
print(e)

# Vectores 
vector_numeros <- c(10, 20, 30, 40, 50)
secuencia <- seq(from=1, to=10)

secuncia_2_en_2 <- seq(from=1, to=10, by=3)

paises<- c("Argentina", "Francia", "China", "Australia", "Mexico")
paises[1]
paises[4]
paises[2:4]
paises[c(-1,-3,-5)]

a <- c(1, 3, 5, 7)
b <- c(2, 4, 6, 8)
c <- a + b

#Data frames 

# Vector de nombres de países
paises <- c("PAN", "CRI", "NIC", "SLV", "HND", "GTM", "BLZ", "DOM")

# Vector de cantidades de habitantes de cada país (en millones)
poblaciones <- c(4.1, 5.0, 6.2, 6.4, 9.2, 16.9, 0.3, 10.6)

poblaciones_paises <- data.frame( pais = paises, poblacion = poblaciones)

# Fila 1
poblaciones_paises[1, ]

# Filas 1, 5 y 7
poblaciones_paises[c(1, 2, 3), ]

# Columna de nombres de países
poblaciones_paises$pais

# Columna de poblaciones de paises 
poblaciones_paises$poblacion

# Lectura de archivo CSV ubicado en la Web
covid <- read.csv("https://raw.githubusercontent.com/gf0604-procesamientodatosgeograficos/2022-i/main/datos/cepredenac/covid/covid-centroamericard-20210422.csv")

covid_local <- 
  read.csv("C:/users/gf0604-1/Downloads/covid-centroamericard-20210422.csv")

covid_CRpositivos <-
  read.csv("C:/Users/gf0604-1/Downloads/04_26_22_CSV_POSITIVOS.csv", sep = ";")

Covid_cr_positivos_remoto <- 
  read.csv("https://raw.githubusercontent.com/DCasttro/Covid/main/04_26_22_CSV_POSITIVOS.csv", sep = ";")

# Tipos compuestos 

## Factores 

sexos <- c("Masculino", "Femenino", "Femenino", "Masculino")
print(sexos)

sexo <- factor(sexos)

levels(sexo)

nlevels(sexo)

table(sexo)

estado_civil <- c("Casado", "soltero", "divorciado", "soltero")

factor_estado_civil <- factor(estado_civil)

# Fecha actual
fecha_actual <- Sys.Date()
print(fecha_actual)
fecha_actual

# Tipo de datos
typeof(fecha_actual)


# Clase
class(fecha_actual)

# Conversión de fecha en formato año-mes-día
fecha_caracter_01 <- "2020-01-01"
typeof(fecha_caracter_01)

fecha_01 <- as.Date(fecha_caracter_01, format="%Y-%m-%d")
print(fecha_01)
typeof(fecha_01)
class(fecha_01)


# Conversión de fecha en formato día/mes/año
fecha_caracter_02 <- "31/01/2020"
fecha_02 <- as.Date(fecha_caracter_02, format="%d/%m/%Y")
print(fecha_02)
typeof(fecha_02)
class(fecha_02)


# Diferencia entre fechas
fecha_02 - fecha_01

## Definición de funciones


nota_final <- function(promedio_examenes,
                       promedio_proyectos,
                       promedio_tareas) {
  factor_examenes <- promedio_examenes * 0.4
  factor_proyectos <- promedio_proyectos * 0.4
  factor_tareas <- promedio_tareas * 0.2
  
  return(factor_examenes + factor_proyectos + factor_tareas)
}

# Sin return 

nota_final <- function(promedio_examenes,
                       promedio_proyectos,
                       promedio_tareas) {
  factor_examenes <- promedio_examenes * 0.4
  factor_proyectos <- promedio_proyectos * 0.4
  factor_tareas <- promedio_tareas * 0.2
  
  factor_examenes + factor_proyectos + factor_tareas
}

#Ejemplos 
nota_final(100, 100, 100)
nota_final(50, 50, 50)
nota_final(75, 50, 100)

nota_final <- function(promedio_examenes,
                       promedio_proyectos=0,
                       promedio_tareas=0) {
  factor_examenes <- promedio_examenes * 0.5
  factor_proyectos <- promedio_proyectos * 0.4
  factor_tareas <- promedio_tareas * 0.1
  
  factor_examenes + factor_proyectos + factor_tareas
}

nota_final(factor_examenes= 100, factor_proyectos= 50)
nota_final(promedio_tareas =  100, promedio_examenes =  75)

#Ejercicios 

celsius_a_fahrenheit <- function(celsius){
  fahrenheit <- (celsius * 9/5 + 32)
  
  return(fahrenheit)
}
celsius_a_fahrenheit(30)
celsius_a_fahrenheit(0)
celsius_a_fahrenheit(40)
celsius_a_fahrenheit(-10)

#Como simplificarlo 
celsius_a_fahrenheit <- function(celsius) { 
   celsius * 9/5 + 32
}

#Al reves 
fahrenheit_a_celsius <- function(fahrenheit) {
  (fahrenheit -32) * 5/9 
  
}
(86)

#Ejemplos 
fahrenheit_a_celsius(86)
fahrenheit_a_celsius(32)
fahrenheit_a_celsius(104)
fahrenheit_a_celsius(104)
fahrenheit_a_celsius(14)

# índice de masa corporal (IMC) 
imc <- function(masa, estatura) {
  masa/estatura^2
}

imc(71, 1.69) 
imc(90, 1.5)

# Condicionales

## Condicional if 

edad <-15
if (edad >= 18) { 
  print("La persona es mayor de edad")
  print("La persona puede votar")
  print("La persona puede conducir automiviles")
} else { 
  print("La persona no es mayor de edad")
  print("La persona no puede votar")
  print("La persona no puede conducir automiviles")
}

edad <- 25

if (edad < 18) {
  print("Menor")
} else if (edad < 65) {
  print("Adulto")
} else {
  print("Adulto mayor")
}

edad <- 25

if (edad < 12) {
  print("Niño")
} else if (edad < 65) {
  print("Adulto")
} else {
  print("Adulto mayor")
}


edad <- 12
if (edad < 12) {
  print("Niño")
} else if (edad < 18) {
  print("Adolecente")
} else if (edad < 65) {
  print("Adulto")
} else {
  print("Adulto mayor")
}

## Ejercicios
### interpretacion_imc

interpretacion_imc <- function(imc) {
  interpretacion <- ""
  
  if (imc < 18.50) {
    interpretacion <- "Bajo peso"
  } else if (imc < 25) {
    interpretacion <- "Normal"
  } else if (imc < 30) {
    interpretacion <- "Sobrepeso"
  } else {
    print("Obesidad")
  }
  return(interpretacion)
} 

interpretacion_imc(15)

interpretacion_imc <- function(imc) {
  if (imc < 18.50) {
    "Bajo peso"
  } else if (imc < 25) {
    "Normal"
  } else if (imc < 30) {
    "Sobrepeso"
  } else {
    print("Obesidad")
  }
  
}

interpretacion_imc(30)
interpretacion_imc(22)
interpretacion_imc(15)
  
  




