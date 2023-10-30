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

La agricultura en Argentina desempeña un papel crucial en la economía del país, proporcionando alimentos y generando ingresos significativos. La toma de decisiones basada en datos es esencial para garantizar la eficiencia y la sostenibilidad de esta industria. El objetivo de este proyecto es desarrollar un modelo que pueda predecir la producción agrícola con mayor precisión que los métodos tradicionales.

### Antecedentes

Los datos utilizados en el proyecto fueron recopilados por el INDEC y el Ministerio de Agricultura, Ganadería y Pesca de Argentina. Los datos abarcan múltiples campañas agrícolas, desde 1969 hasta el 2020. Se incluyen características como la superficie sembrada, la superficie cosechada, el rendimiento y la producción.

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

#### **Metodología**

Importación de librerías necesarias: Se importaron las librerías de Python necesarias para realizar tareas de ciencia de datos y análisis de datos, como Pandas, NumPy, Matplotlib y Seaborn.
Obtención de los datos: Se importó el dataset desde GitHub y se creó el DataFrame df_agricola para trabajar con los datos.
Descripción estadística del DataFrame: Se utilizó el método "describe()" de Pandas para obtener una descripción estadística del DataFrame, lo que permitió conocer la distribución de los datos y detectar posibles outliers.
Análisis de los valores únicos de la columna 'cultivo': Se mostró una lista de los valores únicos que se encuentran en la columna 'cultivo' del DataFrame, para conocer todos los diferentes tipos de cultivos que aparecen en esa columna. Esto permitió conocer la variedad de cultivos que se encuentran en los datos agrícolas.
Frecuencia de los cultivos: Se contó y graficó la frecuencia de los cultivos, lo que muestra cuántas veces aparece cada tipo de cultivo en los datos agrícolas. Esto permitió conocer la distribución de los cultivos en los datos agrícolas y detectar posibles desbalances.
Cambio de nombre de columnas: Se cambió el nombre de ciertas columnas del DataFrame para que sean más fáciles de manejar. Esto permitió tener una mejor comprensión de los datos y facilitar su manipulación.
Verificación de duplicados: Se verificó que no haya filas duplicadas en el DataFrame. Esto permitió asegurarse de que los datos sean únicos y evitar posibles errores en el análisis.

Despues en el siguiente archivo en el cual aplicamos machine learning "machineLearning.ipynb".
En esta sección, explicaremos el emocionante mundo del Machine Learning aplicado a la predicción de producción agrícola. Utilizando avanzadas técnicas de aprendizaje automático, hemos desarrollado modelos de predicción para seis cultivos fundamentales: maíz, trigo, sorgo, avena, soja y girasol. A lo largo de este análisis, examinaremos en detalle cuatro modelos de predicción clave: Naive Bayes, Regresión Lineal, Random Forest Regressor y la Máquina de Soporte Vectorial (SVM). Estos modelos nos proporcionarán valiosas perspectivas y resultados precisos para optimizar la producción agrícola y tomar decisiones informadas en este importante sector. ¡Acompáñanos en este emocionante viaje a través de la aplicación del Machine Learning en la agricultura!
Importación de librerías necesarias: Se importaron las librerías de Python necesarias para realizar tareas de ciencia de datos y aprendizaje automático, como Pandas, NumPy, Matplotlib, Seaborn y Scikit-learn.
Análisis de clustering: Se utilizó el algoritmo de clustering KMeans para agrupar los datos y determinar cuántos modelos entrenar. Se aplicó un análisis univariado para quitar outliers con algún método agrupando por cultivo, y un análisis multivariado para calcular la distancia de Mahalanobis.
Creación del modelo de regresión Naive Bayes: Se creó el modelo de regresión Naive Bayes para predecir la producción de cultivos. Se utilizó el conjunto de datos de entrenamiento para ajustar el modelo y el conjunto de datos de prueba para evaluar su rendimiento.
Evaluación del modelo: Se evaluó la calidad del modelo de regresión Naive Bayes utilizando las métricas para problemas de regresión, como el error cuadrático medio (MSE), el coeficiente de determinación (R^2) y el error absoluto medio (MAE).
Creación de otros modelos de regresión: Se crearon otros modelos de regresión, como la regresión lineal, la regresión logística, el árbol de decisión, el random forest y el SVM, para comparar su rendimiento con el modelo de regresión Naive Bayes.
Selección de características: Se utilizó el método SelectKBest de Scikit-learn para seleccionar las características más importantes para la predicción de la producción de cultivos.
Evaluación de los modelos con características seleccionadas: Se evaluaron los modelos de regresión creados en el paso 5 utilizando las características seleccionadas en el paso 6.
Selección del mejor modelo: Se seleccionó el mejor modelo de regresión para la predicción de la producción de cultivos en base a su rendimiento en las métricas evaluadas.

Paralelamente adjuntamos codigos secundarios 

### Resultados

El modelo desarrollado tiene un error de aproximadamente el 10%, lo que demuestra su capacidad para estimar la producción de cultivos de manera precisa.

### Discusión

El proceso de desarrollo del modelo permitió comprender la importancia de la calidad de los datos y la selección adecuada de características en la creación de modelos de predicción. Para futuras investigaciones, se podría explorar el uso de información adicional, como datos sobre el clima, el suelo y los precios de los cultivos, para mejorar aún más la precisión del modelo.

### Conclusiones

El modelo desarrollado tiene el potencial de proporcionar información valiosa para la toma de decisiones en el sector agrícola argentino.

### Recomendaciones

Se recomienda explorar el uso de información adicional, como datos sobre el clima, el suelo y los precios de los cultivos, para mejorar aún más la precisión del modelo.

### Lecciones Aprendidas

El proceso de desarrollo del modelo permitió comprender la importancia de la calidad de los datos y la selección adecuada de características en la creación de modelos de predicción.

### Anexos

La gráfica siguiente muestra la distribución de cultivos en Argentina.

*Insertar gráfico de distribución de cultivos*

## Agradecimientos

## Referencias

- [Repositorio del Proyecto](https://github.com/Marianod2003/Proyectogrupo21)
- [Tablero del Proyecto](https://github.com/users/Marianod2003/projects/3)
