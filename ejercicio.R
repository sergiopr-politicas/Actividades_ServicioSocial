
library(dplyr)

Estatura <- RNPEDFC$Estatura

# sacando promedio
new_tall <- as.numeric(Estatura)
mean(new_tall, na.rm = TRUE)


# sacando mediana
mediana <- median(new_tall, na.rm = TRUE)
print(mediana)


# sacar moda
moda_complexion <- RNPEDFC$Complexion

moda_delgada <- sum(moda_complexion == "DELGADA", na.rm = TRUE)

print(moda_delgada)

moda_mediana <- sum(moda_complexion == "MEDIANA", na.rm = TRUE)

print(moda_mediana)

moda_robusta <- sum(moda_complexion == "ROBUSTA", na.rm = TRUE)

print(moda_robusta)

moda_obesa <- sum(moda_complexion == "OBESA", na.rm = TRUE)

print(moda_obesa)


# Crear una tabla con los resultados
frecuencias <- data.frame(
  Categoria = c("DELGADA", "MEDIANA", "ROBUSTA", "OBESA"),
  Frecuencia = c(moda_delgada, moda_mediana, moda_robusta, moda_obesa)
)

frecuencias

# sacando la varianza de la altura
varianza <- var(Estatura, na.rm = TRUE)
print(varianza)

desviacion_estandar <- sd(Estatura, na.rm = TRUE)
print(desviacion_estandar)

# rango
rango_estatura <- as.numeric(RNPEDFC$Estatura)
minimo <- min(rango_estatura, na.rm = TRUE)
maximo <- max(rango_estatura, na.rm = TRUE)
rango <- maximo - minimo
print(rango)

# Calcular la frecuencia absoluta
sexo <- RNPEDFC$Sexo
frecuencia_absoluta <- table(sexo)
frecuencia_absoluta
prop.table(frecuencia_absoluta) * 100

# redondear a dos decimales, para mayor claridad
round(prop.table(frecuencia_absoluta) * 100, 2)

# tabla contingencia sexo, complexion
tabla_contingencia <- table(sexo, moda_complexion)
tabla_contingencia

# porcentajes
porcentajes_columna <- prop.table(tabla_contingencia, margin = 2) * 100
porcentaje_columna_redondeado <- round(porcentajes_columna, 2)
porcentaje_columna_redondeado

# porcentaje fila
porcentaje_fila <- prop.table(tabla_contingencia, margin = 1) * 100
porcentaje_fila_redondeado <- round(porcentaje_fila, 2)
porcentaje_fila_redondeado

# representacion grafica


# Deciles
quantile(new_tall, probs = c(0.25, 0.5, 0.75), na.rm = TRUE)

# tabla de contingencia sexo-complexion
tabla_SC <- table(RNPEDFC$Sexo, RNPEDFC$Complexion)
print(tabla_SC)

# aplicando ji-cuadrada
chisq_resultado <- chisq.test(tabla_SC)
chisq_resultado

