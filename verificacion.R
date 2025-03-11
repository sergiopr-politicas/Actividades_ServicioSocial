# Tarea: Verificación de resultados
# Autor: Piñon Reyes Sergio Agustin
# Fecha: Marzo, 2025
# Datos: RNPEDFC.csv

# Resultados de la comparación: Su código esta correcto.

# El entorno de trabajo esta correcto 0.0
rm(list = ls())
graphics.off()
options(warn = - 1)

# Los paquetes se instalan sin problema 0.1

# Los paquetes se cargan sin problema
library(foreign)
library(tidyverse)
library(readr)
library(ggplot2)

# Carga la base de datos RNPEDFC.csv correcto
ruta_datos <- "C:/Users/agustin/Desktop/Validacion_de_script"

setwd(ruta_datos)

RNPEDFC <- read_csv("RNPEDFC.csv", locale = locale(encoding = "ISO-8859-1"))

colnames(RNPEDFC)

# Medidas de tendencia central correcto 
promedio <- mean(RNPEDFC$Estatura)

RNPEDFC_filtrado <- RNPEDFC %>%
  mutate(
    Estatura = as.numeric(gsub("[^0-9.]", "", Estatura))
  )

mean(RNPEDFC_filtrado$Estatura, na.rm = TRUE)

# Calcular la mediana
median(RNPEDFC_filtrado$Estatura, na.rm = TRUE)

# Calcular la Moda
calcular_moda <- function(x) {
  uniq <- unique(x)
  uniq[which.max(tabulate(match(x, uniq)))]
}

calcular_moda(RNPEDFC_filtrado$Complexion)


# Calcular medidas de dispersión correcto
# Varianza
var(RNPEDFC_filtrado$Estatura, na.rm = TRUE)

# Desviacion Standart
sd(RNPEDFC_filtrado$Estatura, na.rm = TRUE)

# Rango
rango_min <- min(RNPEDFC_filtrado$Estatura, na.rm = TRUE)
rango_max <- max(RNPEDFC_filtrado$Estatura, na.rm = TRUE)
rango <- rango_max - rango_min
rango

# Tablas de Frecuencia correcto

# Frecuencia absoluta
table(RNPEDFC_filtrado$Sexo)

Frecuencia_absoluta <- table(RNPEDFC_filtrado$Sexo)
prop.table(Frecuencia_absoluta) * 100

round(prop.table(Frecuencia_absoluta) * 100, 2)


# Tablas de contingencia
Table_contingencia <- table(RNPEDFC_filtrado$Sexo, RNPEDFC_filtrado$Complexion)

porcentaje_columna <- prop.table(Table_contingencia, margin = 2) * 100

round(porcentaje_columna, 2)

# Porcentaje por fila
porcentaje_fila <- prop.table(Table_contingencia, margin = 1) * 100

porcentaje_fila_redondeado <- round(porcentaje_fila, 2)

print(porcentaje_fila_redondeado)


# Gráficas correctas
# Gráfica de barras para la variable complexión
# Este es el código que propongo
ggplot(RNPEDFC_filtrado, aes(x = Complexion)) +
  geom_bar(fill = "steelblue") +
  geom_text(stat = "count", aes(label = ..count..), vjust = -0.5, color = "black") +
  labs(
    title = "Complexion",
    x = "Complexión",
    y = "Frecuencia"
  ) +
  theme_minimal()


# Histograma para la variable Estatura correcto
ggplot(RNPEDFC_filtrado, aes(x = Estatura)) +
  geom_density(color = "blue", size = 1) +
  labs(
    title = "Curva de densidad de la variable Estatura",
    x = "Estatura (cm)",
    y = "Densidad"
  ) +
  theme_minimal()


# Variables continuas y categóricas correcto
# Complexion y Estatura
  ggplot(RNPEDFC_filtrado, aes(x = Estatura, color = Sexo, fill = Sexo)) +
  geom_density(alpha = 0.4, size = 1) +  
  labs(
    title = "Curva de densidad de la variable Estatura por Sexo",
    x = "Estatura (cm)",
    y = "Densidad",
    fill = "Sexo",  
    color = "Sexo"  
  ) +
  theme_minimal() +
  theme(
    legend.title = element_text(size = 12),  
    legend.text = element_text(size = 10)   
  )

# Cuantiles correcto
quantile(RNPEDFC_filtrado$Estatura, probs = c(0.25, 0.5, 0.75), na.rm = TRUE)

# Boxplot Grafica correcto
ggplot(data = RNPEDFC_filtrado, aes(y = Estatura)) +
  geom_boxplot(outlier.colour = "red", outlier.shape = 16, outlier.size = 0.1) +
  labs(
    title = "Boxplot de la variable Estatura",
    y = "Estatura (cm)"
  ) +
  theme_minimal()

# Filtrar estatura mayor 1 metro correcto
RNPEDFC_filtrado_estatura <- RNPEDFC_filtrado %>%
  filter(Estatura > 1)


# Boxplot con los datos filtrados correcto
ggplot(data = RNPEDFC_filtrado_estatura, aes(y = Estatura)) +
  geom_boxplot(outlier.colour = "red", outlier.shape = 16, outlier.size = 0.1) +
  labs(
    title = "Boxplot de la variable Estatura (valores mayores a 1)",
    y = "Estatura (cm)"
  ) +
  theme_minimal()

# Tabla de contingencia correcta
tabla_contingencia <- table(RNPEDFC_filtrado$Sexo, RNPEDFC_filtrado$Complexion)
print(tabla_contingencia)

# Ji cuadrada correcta
chisq_resultado <- chisq.test(tabla_contingencia)
chisq_resultado

# Limpiamos el ambiente
rm(list = ls())          
graphics.off()           
options(warn = -1)       

# Cargar librerias
library(foreign)
library(tidyverse)
library(readr)
library(ggplot2)

# Cargar archivo salud.csv
setwd("C:/Users/agustin/Desktop/Validacion_de_script")  

salud <- read_csv("salud.csv", locale = locale(encoding = "ISO-8859-1"), show_col_types = FALSE)

colnames(salud)  

# Análisis de los datos
salud <- salud %>%
  mutate(
    Estatura = as.numeric(gsub("[^0-9.]", "", Estatura)),  # Limpia texto en Estatura
    Edad = as.numeric(gsub("[^0-9.]", "", Edad)),          # Limpia texto en Edad
    Peso = as.numeric(gsub("[^0-9.]", "", Peso))           # Limpia texto en Peso
  )

# Eliminar filas con valores faltantes
salud <- salud %>% drop_na()

# Verificar la estructura de los datos
summary(salud)

# Ajustar modelo
modelo <- lm(Estatura ~ Edad + Peso, data = salud)
summary(modelo)

# Grafica del modelo: salud y estatura correcta
ggplot(salud, aes(x = Edad, y = Estatura)) +
  geom_point(color = "#0B3D62") +  
  geom_smooth(method = "lm", formula = y ~ x, color = "#D59F0F") +  
  labs(
    title = "Relación entre Edad y Estatura",
    x = "Edad (años)",
    y = "Estatura (metros)",
    caption = "Fuente: Base de datos del IMSS"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    plot.caption = element_text(hjust = 0, size = 8)
  )


# Grafica distribución de los residuos correcta
ggplot(data = NULL, aes(x = residuals(modelo))) +
  geom_histogram(bins = 30, fill = "#0B3D62", color = "#D59F0F") +
  labs(
    title = "Distribución de los residuos",
    x = "Residuos",
    y = "Frecuencia"
  ) +
  theme_minimal()

# Grafico de residuos vs valores ajustados
ggplot(data = NULL, aes(x = fitted(modelo), y = residuals(modelo))) +
  geom_point(color = "#0B3D62") +
  geom_hline(yintercept = 0, linetype = "dashed", color = "#D59F0F") +
  labs(
    title = "Residuos vs Valores Ajustados",
    x = "Valores Ajustados",
    y = "Residuos"
  ) +
  theme_minimal()

# Test de Durbin-Watson para autocorrelación
library(lmtest)
dwtest(modelo)