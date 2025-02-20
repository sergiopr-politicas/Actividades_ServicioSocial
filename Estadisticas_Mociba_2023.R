# Convertir la columna P4_08 a numerica
BD$P4_08 <- as.numeric(BD$P4_08)

# Consultar si hay valores NA no numericos despues de la conversion
sum(is.na(BD$P4_08))

# Cuantas personas respondieron si a esta pregunta
conteo_2 <- sum(BD$P4_08 == 2, na.rm = TRUE) 

# Cuantas personas respondieron No a esta pregunta
conteo_1 <- sum(BD$P4_08 == 1, na.rm = TRUE) 

# Cuantas personas no lo saben
conteo_9 <- sum(BD$P4_08 == 9, na.rm = TRUE) 

print(paste("El valor 2 aparece", conteo_2, "veces en P4_08"))
print(paste("El valor 1 aparece", conteo_1, "veces en P4_08"))
print(paste("El valor 9 aparece", conteo_9, "veces en P4_08"))


# P5_08_01
# Cuantas personas respondieron Novia(o)/pareja actual
conteo_01 <- sum(BD$P5_08_1 == "1", na.rm = TRUE)

# Cuantas personas respondieron ExNovia(o) / expareja
conteo_02 <- sum(BD$P5_08_1 == "2", na.rm = TRUE)

# Cuantas personas respondieron familiar
conteo_03 <- sum(BD$P5_08_1 == "3", na.rm = TRUE)

# Cuantas personas respondieron amiga(O)
conteo_04 <- sum(BD$P5_08_1 == "4", na.rm = TRUE)

# Cuantas respondieron Compañera(o) de clase/trabajo
conteo_05 <- sum(BD$P5_08_1 == "5", na.rm = TRUE)

# Cuantas personas respondieron Conocida(o) de poco trato
conteo_06 <- sum(BD$P5_08_1 == "6", na.rm = TRUE)

# Cuantos respondieron conocida(o) solo de vista
conteo_07 <- sum(BD$P5_08_1 == "7", na.rm = TRUE)

# Cuantos respondieron Desconocida(o)
conteo_08 <- sum(BD$P5_08_1 == "8", na.rm = TRUE)

# Cuantas personas respondieron Otro
conteo_09 <- sum(BD$P5_08_1 == "9", na.rm = TRUE)

# Cuantas personas respondieron no sabe/no responde
conteo_010 <- sum(BD$P5_08_1 == "99", na.rm = TRUE)

# cuantas personas lo dejaron en blanco
conteo_011 <- sum(BD$P5_08_1 == "b", na.rm = TRUE)

# Muestra de resultados P5_08_01
print(paste("El valor 1 aparece", conteo_01, "veces en P5_08_1"))

print(paste("El valor 2 aparece", conteo_02, "veces en P5_08_1"))

print(paste("El valor 3 aparece", conteo_03, "veces en P5_08_1"))

print(paste("El valor 4 aparece", conteo_04, "veces en P5_08_1"))

print(paste("El valor 5 aparece", conteo_05, "veces en P5_08_1"))

print(paste("El valor 6 aparece", conteo_06, "veces en P5_08_1"))

print(paste("El valor 7 aparece", conteo_07, "veces en P5_08_1"))

print(paste("El valor 8 aparece", conteo_08, "veces en P5_08_1"))

print(paste("El valor 9 aparece", conteo_09, "veces en P5_08_1"))

print(paste("El valor 10 aparece", conteo_010, "veces en P5_08_1"))

print(paste("El valor b aparece", conteo_011, "veces en P5_08_1"))


# P6_08
# Identificacion de genero
# Es hombre
conteo_001 <- sum(BD$P6_08 == "1", na.rm = TRUE)

# Es mujer
conteo_002 <- sum(BD$P6_08 == "2", na.rm = TRUE)

# Es hombre y mujer
conteo_003 <- sum(BD$P6_08 == "3", na.rm = TRUE)

# No sabe
conteo_004 <- sum(BD$P6_08 == "9", na.rm = TRUE)

# Espacio en blanco
conteo_005 <- sum(BD$P6_08 == "b", na.rm = TRUE)

# resultados P6_08
print(paste("El ciberacosador es", conteo_001, "P6_08"))
print(paste("El ciberacosador es", conteo_002, "P6_08"))
print(paste("El ciberacosador es", conteo_003, "P6_08"))
print(paste("El ciberacosador es", conteo_004, "P6_08"))
print(paste("El ciberacosador es", conteo_005, "P6_08"))


# P7_08_1 
# Identificacion de la edad de los acosadores
# Menores de 12 años
conteo_edad_01 <- sum(BD$P7_08_1 == "1", na.rm = TRUE)

# De 12 a 17 años
conteo_edad_02 <- sum(BD$P7_08_1 == "2", na.rm = TRUE)

# De 18 a 25 años
conteo_edad_03 <- sum(BD$P7_08_1 == "3", na.rm = TRUE)

# De 26 a 35 años
conteo_edad_04 <- sum(BD$P7_08_1 == "4", na.rm = TRUE)

# De 36 a 45 años
conteo_edad_05 <- sum(BD$P7_08_1 == "5", na.rm = TRUE)

# De 46 a 60 años
conteo_edad_06 <- sum(BD$P7_08_1 == "6", na.rm = TRUE)

# Mas de 60 años
conteo_edad_07 <- sum(BD$P7_08_1 == "7", na.rm = TRUE)

# No sabe/ no responde
conteo_edad_08 <- sum(BD$P7_08_1 == "9", na.rm = TRUE)

# blanco
conteo_edad_09 <- sum(BD$P7_08_1 == "b", na.rm = TRUE)

# Resultados P7_08_1
print(paste("La edad del ciberacosador es", conteo_edad_01, "P7_08_01"))

print(paste("La edad del ciberacosador es", conteo_edad_02, "P7_08_01"))

print(paste("La edad del ciberacosador es", conteo_edad_03, "P7_08_01"))

print(paste("La edad del ciberacosador es", conteo_edad_04, "P7_08_01"))

print(paste("La edad del ciberacosador es", conteo_edad_05, "P7_08_01"))

print(paste("La edad del ciberacosador es", conteo_edad_06, "P7_08_01"))

print(paste("La edad del ciberacosador es", conteo_edad_07, "P7_08_01"))

print(paste("La edad del ciberacosador es", conteo_edad_08, "P7_08_01"))

print(paste("La edad del ciberacosador es", conteo_edad_09, "P7_08_01"))


#  P8_08_1 
# ¿Por que, lo hizo?
# Enojo o frustracion
razon_01 <- sum(BD$P8_08_1 == "01", na.rm = TRUE)

# Deseo de venganza
razon_02 <- sum(BD$P8_08_1 == "02", na.rm = TRUE)

# Por diversion
razon_03 <- sum(BD$P8_08_1 == "03", na.rm = TRUE)

# Odio o desprecio
razon_04 <- sum(BD$P8_08_1 == "04", na.rm = TRUE)

# Envidia o celos
razon_05 <- sum(BD$P8_08_1 == "05", na.rm = TRUE)

# Intimidarle o causarle miedo
razon_06 <- sum(BD$P8_08_1 == "06", na.rm = TRUE)

# Para obtener un beneficio economico
razon_07 <- sum(BD$P8_08_1 == "07", na.rm = TRUE)

# Para que hiciera o dejara de hacer algo (extorsion)
razon_08 <- sum(BD$P8_08_1 == "08", na.rm = TRUE)

# Otro
razon_09 <- sum(BD$P8_08_1 == "09", na.rm = TRUE)

# No sabe/no responde
razon_010 <- sum(BD$P8_08_1 == "99", na.rm = TRUE)

# blanco
razon_011 <- sum(BD$P8_08_1 == "b", na.rm = TRUE)


# resultados P8_08_1
print(paste("La razon fue", razon_01, "P8_08_1"))

print(paste("La razon fue", razon_02, "P8_08_1"))

print(paste("La razon fue", razon_03, "P8_08_1"))

print(paste("La razon fue", razon_04, "P8_08_1"))

print(paste("La razon fue", razon_05, "P8_08_1"))

print(paste("La razon fue", razon_06, "P8_08_1"))

print(paste("La razon fue", razon_07, "P8_08_1"))

print(paste("La razon fue", razon_08, "P8_08_1"))

print(paste("La razon fue", razon_09, "P8_08_1"))

print(paste("La razon fue", razon_010, "P8_08_1"))

print(paste("La razon fue", razon_011, "P8_08_1"))


# P9_08
# Esta situacion ocurrio
# Muchas veces
Frecuencia_01 <- sum(BD$P9_08 == "1", na.rm = TRUE)

# Algunas veces
Frecuencia_02 <- sum(BD$P9_08 == "2", na.rm = TRUE)

# Pocas veces
Frecuencia_03 <- sum(BD$P9_08 == "3", na.rm = TRUE)

# Una vez
Frecuencia_04 <- sum(BD$P9_08 == "4", na.rm = TRUE)

# No sabe/no responde
Frecuencia_05 <- sum(BD$P9_08 == "9", na.rm = TRUE)

# blanco
Frecuencia_06 <- sum(BD$P9_08 == "b", na.rm = TRUE)


# resultados P9_08
print(paste("Cual fue la frecuencia", Frecuencia_01, "P9_08"))

print(paste("Cual fue la frecuencia", Frecuencia_02, "P9_08"))

print(paste("Cual fue la frecuencia", Frecuencia_03, "P9_08"))

print(paste("Cual fue la frecuencia", Frecuencia_04, "P9_08"))

print(paste("Cual fue la frecuencia", Frecuencia_05, "P9_08"))

print(paste("Cual fue la frecuencia", Frecuencia_06, "P9_08"))


# P10_08_1
# ¿Que le provoco esta situacion?
# Nervios
Sentimiento_01 <- sum(BD$P10_08_1 == "01", na.rm = TRUE)

# Miedo
Sentimiento_02 <- sum(BD$P10_08_1 == "01", na.rm = TRUE)

# Estres
Sentimiento_03 <- sum(BD$P10_08_1 == "02", na.rm = TRUE)

# Desconfianza
Sentimiento_04 <- sum(BD$P10_08_1 == "04", na.rm = TRUE)

# Frustracion
Sentimiento_05 <- sum(BD$P10_08_1 == "05", na.rm = TRUE)

# Inseguridad
Sentimiento_06 <- sum(BD$P10_08_1 == "06", na.rm = TRUE)

# Enojo
Sentimiento_07 <- sum(BD$P10_08_1 == "07", na.rm = TRUE)

# Problemas con familiares, novia, pareja o amigos
Sentimiento_08 <- sum(BD$P10_08_1 == "08", na.rm = TRUE)

# Perdida de dinero
Sentimiento_09 <- sum(BD$P10_08_1 == "09", na.rm = TRUE)

# Perdida de trabajo
Sentimiento_10 <- sum(BD$P10_08_1 == "10", na.rm = TRUE)

# Daño a su imagen profesional / laboral
Sentimiento_11 <- sum(BD$P10_08_1 == "11", na.rm = TRUE)

# Daño a su imagen escolar (bullying)
Sentimiento_12 <- sum(BD$P10_08_1 == "12", na.rm = TRUE)

# Daño a su imagen personal
Sentimiento_13 <- sum(BD$P10_08_1 == "13", na.rm = TRUE)

# Otro
Sentimiento_14 <- sum(BD$P10_08_1 == "14", na.rm = TRUE)

# Nada
Sentimiento_15 <- sum(BD$P10_08_1 == "15", na.rm = TRUE)

# No sabe/no responde
Sentimiento_16 <- sum(BD$P10_08_1 == "99", na.rm = TRUE)

# blanco
Sentimiento_17 <- sum(BD$P10_08_1 == "b", na.rm = TRUE)



# Resultados P10_08_1

print(paste("Sentimiento que presento la victima", Sentimiento_01, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_02, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_03, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_04, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_05, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_06, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_07, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_08, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_09, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_10, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_11, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_12, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_13, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_14, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_15, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_16, "P10_08_1"))

print(paste("Sentimiento que presento la victima", Sentimiento_17, "P10_08_1"))


# P11_08_1
# ¿que medios digitales utilizaron los personas para dañarle?
# Whatsapp
Medio_01 <- sum(BD$P11_08_1 == "01", na.rm = TRUE)

# Facebook
Medio_02 <- sum(BD$P11_08_1 == "02", na.rm = TRUE)

# Messenger
Medio_03 <- sum(BD$P11_08_1 == "03", na.rm = TRUE)

# Instagram
Medio_04 <- sum(BD$P11_08_1 == "04", na.rm = TRUE)

# Tiktok
Medio_05 <- sum(BD$P11_08_1 == "05", na.rm = TRUE)

# Telegram
Medio_06 <- sum(BD$P11_08_1 == "06", na.rm = TRUE)

# Twitter
Medio_07 <- sum(BD$P11_08_1 == "07", na.rm = TRUE)

# Youtube
Medio_08 <- sum(BD$P11_08_1 == "08", na.rm = TRUE)

# SMS
Medio_09 <- sum(BD$P11_08_1 == "09", na.rm = TRUE)

# Correo electronico institucional
Medio_10 <- sum(BD$P11_08_1 == "10", na.rm = TRUE)

# Correo electronico personal
Medio_11 <- sum(BD$P11_08_1 == "11", na.rm = TRUE)

# Llamadas de celular
Medio_12 <- sum(BD$P11_08_1 == "12", na.rm = TRUE)

# Llamadas de telefono fijo
Medio_13 <- sum(BD$P11_08_1 == "13", na.rm = TRUE)

# Otro medio
Medio_14 <- sum(BD$P11_08_1 == "14", na.rm = TRUE)

# No sabe/no respponde
Medio_15 <- sum(BD$P11_08_1 == "99", na.rm = TRUE)

# Blanco
Medio_16 <- sum(BD$P11_08_1 == "b", na.rm = TRUE)


# Resultados P11_08_1
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_01, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_02, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_03, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_04, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_05, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_06, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_07, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_08, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_09, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_10, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_11, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_12, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_13, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_14, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_15, "P11_08_1"))
print(paste("¿Cual fue el medio digital que emplearon, para agredirte", Medio_16, "P11_08_1"))


# Sexo de las personas afectadas
# Hombres
Sexo_h <- sum(BD$SEXO == "1", na.rm = TRUE)
print(paste("¿Cuantas de las personas afectadas son", Sexo_h, "hombres"))

# Mujeres
Sexo_m <- sum(BD$SEXO == "2", na.rm = TRUE)
print(paste("¿Cuantas de las personas afectadas son", Sexo_m, "mujeres"))

# Edad de las personas afectadas
Edad_01 <- sum(BD$EDAD == "12", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_01))

Edad_02 <- sum(BD$EDAD == "13", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_02))

Edad_03 <- sum(BD$EDAD == "14", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_03))

Edad_04 <- sum(BD$EDAD == "15", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_04))

Edad_05 <- sum(BD$EDAD == "16", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_05))

Edad_06 <- sum(BD$EDAD == "17", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_06))

Edad_07 <- sum(BD$EDAD == "18", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_07))

Edad_08 <- sum(BD$EDAD == "19", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_08))

Edad_09 <- sum(BD$EDAD == "20", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_09))

Edad_10 <- sum(BD$EDAD == "21", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_10))

Edad_11 <- sum(BD$EDAD == "22", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_11))

Edad_12 <- sum(BD$EDAD == "23", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_12))

Edad_13 <- sum(BD$EDAD == "24", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_13))

Edad_14 <- sum(BD$EDAD == "25", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_14))

Edad_15 <- sum(BD$EDAD == "26", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_15))

Edad_16 <- sum(BD$EDAD == "27", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_16))

Edad_17 <- sum(BD$EDAD == "28", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_17))

Edad_18 <- sum(BD$EDAD == "29", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_18))

Edad_19 <- sum(BD$EDAD == "30", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_19))

Edad_20 <- sum(BD$EDAD == "31", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_20))

Edad_21 <- sum(BD$EDAD == "32", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_21))

Edad_22 <- sum(BD$EDAD == "33", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_22))

Edad_23 <- sum(BD$EDAD == "34", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_23))

Edad_24 <- sum(BD$EDAD == "35", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_24))

Edad_25 <- sum(BD$EDAD == "36", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_25))

Edad_26 <- sum(BD$EDAD == "37", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_26))

Edad_27 <- sum(BD$EDAD == "38", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_27))

Edad_28 <- sum(BD$EDAD == "39", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_28))

Edad_29 <- sum(BD$EDAD == "40", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_29))

Edad_30 <- sum(BD$EDAD == "41", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_30))

Edad_31 <- sum(BD$EDAD == "42", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_31))

Edad_32 <- sum(BD$EDAD == "43", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_32))

Edad_33 <- sum(BD$EDAD == "44", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_33))

Edad_34 <- sum(BD$EDAD == "45", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_34))

Edad_35 <- sum(BD$EDAD == "46", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_35))

Edad_36 <- sum(BD$EDAD == "47", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_36))

Edad_37 <- sum(BD$EDAD == "48", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_37))

Edad_38 <- sum(BD$EDAD == "49", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_38))

Edad_39 <- sum(BD$EDAD == "50", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_39))

Edad_40 <- sum(BD$EDAD == "51", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_40))

Edad_41 <- sum(BD$EDAD == "52", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_41))

Edad_42 <- sum(BD$EDAD == "53", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_42))

Edad_43 <- sum(BD$EDAD == "54", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_43))

Edad_44 <- sum(BD$EDAD == "55", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_44))

Edad_45 <- sum(BD$EDAD == "56", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_45))

Edad_46 <- sum(BD$EDAD == "57", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_46))

Edad_47 <- sum(BD$EDAD == "58", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_47))

Edad_48 <- sum(BD$EDAD == "59", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_48))

Edad_49 <- sum(BD$EDAD == "60", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_49))

Edad_50 <- sum(BD$EDAD == "61", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_50))

Edad_51 <- sum(BD$EDAD == "62", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_51))

Edad_52 <- sum(BD$EDAD == "63", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_52))

Edad_53 <- sum(BD$EDAD == "64", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_53))

Edad_54 <- sum(BD$EDAD == "65", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_54))

Edad_55 <- sum(BD$EDAD == "66", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_55))

Edad_56 <- sum(BD$EDAD == "67", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_56))

Edad_57 <- sum(BD$EDAD == "68", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_57))

Edad_58 <- sum(BD$EDAD == "69", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_58))

Edad_59 <- sum(BD$EDAD == "70", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_59))

Edad_60 <- sum(BD$EDAD == "71", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_60))

Edad_61 <- sum(BD$EDAD == "72", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_61))

Edad_62 <- sum(BD$EDAD == "73", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_62))

Edad_63 <- sum(BD$EDAD == "74", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_63))

Edad_64 <- sum(BD$EDAD == "75", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_64))

Edad_65 <- sum(BD$EDAD == "76", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_65))

Edad_66 <- sum(BD$EDAD == "77", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_66))

Edad_67 <- sum(BD$EDAD == "78", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_67))

Edad_68 <- sum(BD$EDAD == "79", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_68))

Edad_69 <- sum(BD$EDAD == "80", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_69))

Edad_70 <- sum(BD$EDAD == "81", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_70))

Edad_71 <- sum(BD$EDAD == "82", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_71))

Edad_72 <- sum(BD$EDAD == "83", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_72))

Edad_73 <- sum(BD$EDAD == "84", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_73))

Edad_74 <- sum(BD$EDAD == "85", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_74))

Edad_75 <- sum(BD$EDAD == "86", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_75))

Edad_76 <- sum(BD$EDAD == "87", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_76))

Edad_77 <- sum(BD$EDAD == "88", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_77))

Edad_78 <- sum(BD$EDAD == "89", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_78))

Edad_79 <- sum(BD$EDAD == "90", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_79))

Edad_80 <- sum(BD$EDAD == "91", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_80))

Edad_81 <- sum(BD$EDAD == "92", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_81))

Edad_82 <- sum(BD$EDAD == "93", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_82))

Edad_83 <- sum(BD$EDAD == "94", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_83))

Edad_84 <- sum(BD$EDAD == "95", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_84))

Edad_85 <- sum(BD$EDAD == "96", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_85))

Edad_86 <- sum(BD$EDAD == "97", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_86))

Edad_87 <- sum(BD$EDAD == "98", na.rm = TRUE)
print(paste("Edad de los afectados", Edad_87))

Adolescentes <- (742 + 786 + 832 + 833 + 876)
print(Adolescentes)

Jovenes_1825 <- (796 + 848 + 893 + 882 + 957 + 1046 + 924 + 884)
print(Jovenes_1825)

Jovenes_2_2635 <- (914 + 982 + 989 + 830 +1035 + 789 + 897 + 927 + 753 + 841)
print(Jovenes_2_2635)

Jovenes_3_3645 <- (788 + 779 + 812 + 701 + 869 + 566 + 837 + 704 + 566 + 795)
print(Jovenes_3_3645)

Jovenes_4_4660 <- (673 + 722 + 655 + 693 + 884 + 546 + 724 + 699 + 588 + 668 + 580 + 527 + 595 + 528 + 585)
print(Jovenes_4_4660)

Adultos_m60 <- (374 + 447 + 467 + 386 + 419 + 348 + 289 + 287 + 233 + 258 + 130 + 181 + 148 + 119 + 129 + 116 + 93 + 79 + 66 + 72 + 34 + 29 + 32 + 23 + 23 + 12 + 11 + 6 + 1 + 6 + 2 + 1 + 4 + 1 + 1 + 2 + 94
)
print(Adultos_m60)

