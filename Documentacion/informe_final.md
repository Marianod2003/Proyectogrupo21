# Proyecto Práctica Profesionalizante 1 - 2023 - Grupo 21
## Informe Final del Proyecto

### Resumen Ejecutivo

La agricultura es una industria vital en Argentina, que representa el 10% del PIB del país. La toma de decisiones basada en datos es esencial para optimizar la producción agrícola y gestionar los recursos de manera eficiente. Este proyecto desarrolló un modelo de predicción que estima la producción de cultivos en Argentina con un error de aproximadamente el 10%.

### Índice

1. [Introducción](#introducción)
2. [Antecedentes](#antecedentes)
3. [Metodología](#metodología)
4. [Resultados](#resultados)
5. [Discusión](#discusión)
6. [Conclusiones](#conclusiones)
7. [Recomendaciones](#recomendaciones)
8. [Lecciones Aprendidas](#lecciones-aprendidas)
9. [Anexos](#anexos)
10. [Agradecimientos](#agradecimientos)
11. [Referencias](#referencias)

## Introducción

La agricultura es una industria vital en Argentina, que representa el 10% del PIB del país. El sector agrícola emplea a más de 2 millones de personas y es responsable de la producción de alimentos para el consumo interno y la exportación.

### Antecedentes

La agricultura en Argentina desempeña un papel crucial en la economía del país, proporcionando alimentos y generando ingresos significativos. La toma de decisiones basada en datos es esencial para garantizar la eficiencia y la sostenibilidad de esta industria.

### Metodología

#### Datos

Los datos utilizados en el proyecto fueron recopilados por el INDEC y el Ministerio de Agricultura, Ganadería y Pesca de Argentina. Los datos abarcan múltiples campañas agrícolas, desde 1969 hasta el 2020. Se incluyen características como la superficie sembrada, la superficie cosechada, el rendimiento y la producción.

##### Características del Conjunto de Datos

| Característica        | Descripción                                       |
|-----------------------|---------------------------------------------------|
| Superficie sembrada   | Área de tierra que se plantó con un cultivo      |
| Superficie cosechada  | Área de tierra de la superficie sembrada que se cosechó |
| Rendimiento           | Cantidad de producción de un cultivo por unidad de superficie |
| Producción            | Cantidad total de producción de un cultivo       |

#### Modelo de Red Neuronal para Predicción de Producción Agrícola

El objetivo del proyecto es desarrollar un modelo que pueda predecir la producción agrícola con mayor precisión que los métodos tradicionales.

##### Pasos para Crear el Modelo

1. Selección de características y variable objetivo
2. División de datos en conjuntos de entrenamiento y prueba
3. Normalización de datos
4. Creación del Modelo de Red Neuronal
5. Compilación del Modelo
6. Entrenamiento del Modelo
7. Evaluación del Modelo

## Resultados

### Conclusiones

Este proyecto tiene el potencial de proporcionar información valiosa para la toma de decisiones en el sector agrícola argentino. Los resultados indican que el modelo desarrollado tiene un error de aproximadamente el 10%, lo que demuestra su capacidad para estimar la producción de cultivos de manera precisa.

### Recomendaciones

Para futuras investigaciones, se podría explorar el uso de información adicional, como datos sobre el clima, el suelo y los precios de los cultivos, para mejorar aún más la precisión del modelo.

### Lecciones Aprendidas

El proceso de desarrollo del modelo permitió comprender la importancia de la calidad de los datos y la selección adecuada de características en la creación de modelos de predicción.

### Anexos

La gráfica siguiente muestra la distribución de cultivos en Argentina.

*Insertar gráfico de distribución de cultivos*

## Agradecimientos

## Referencias

<<<<<<< HEAD
- [Repositorio del Proyecto](https://github.com/Marianod2003/Proyectogrupo21)
- [Tablero del Proyecto](https://github.com/users/Marianod2003/projects/3)
=======
También se podría explorar el uso de modelos más complejos, como los modelos de aprendizaje profundo. Los modelos de aprendizaje profundo pueden aprender patrones más complejos que los modelos de red neuronal simples.

## Conclusión...
En proceso

## Consultas SQL - Uso y Utilidad

Este proyecto también incluye el uso de consultas SQL para analizar y acceder a los datos agrícolas. Las consultas SQL son una herramienta esencial para el análisis de datos agrícolas, permitiendo a los usuarios acceder, manipular y analizar datos de manera eficiente.

### Creación de tabla

La primera consulta SQL se encarga de la creación de la tabla "EstimacionesAgricolasArgentina." Esta tabla se utiliza para almacenar los datos agrícolas, y su estructura se adapta a las necesidades del proyecto.

```sql
CREATE TABLE EstimacionesAgricolasArgentina (
    ID INT PRIMARY KEY,
    Provincia VARCHAR(50),
    Departamento VARCHAR(50),
    Campaña INT,
    Cultivo VARCHAR(50),
    SuperficieSembrada FLOAT,
    SuperficieCosechada FLOAT,
    Produccion FLOAT,
    Rendimiento FLOAT
);






**'https://github.com/Marianod2003/Proyectogrupo21'**
**'https://github.com/users/Marianod2003/projects/3'**
>>>>>>> 5a2c9fadf9f1db245a825c1e0fc87e8a4ba89e81
