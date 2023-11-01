# Proyecto Práctica Profesionalizante 1 - 2023 - Grupo 21
## Informe Final del Proyecto

### Resumen Ejecutivo
La agricultura es una industria vital para la economía argentina, representando el 10% del PIB del país. La toma de decisiones basada en datos es esencial para optimizar la producción agrícola y gestionar los recursos de manera eficiente.

Este proyecto desarrolló un modelo de predicción de la producción agrícola en Argentina basado en aprendizaje automático. El modelo se entrenó en un conjunto de datos de 52 campañas agrícolas, desde 1969 hasta 2020. Los resultados mostraron que el modelo puede estimar la producción de cultivos con un error de aproximadamente el 10%.

Este modelo tiene el potencial de mejorar la eficiencia y la sostenibilidad de la industria agrícola argentina. Al proporcionar estimaciones precisas de la producción, el modelo puede ayudar a los agricultores a tomar mejores decisiones sobre la siembra, la cosecha y la comercialización de sus cultivos.

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
10. [Referencias](#referencias)

## Introducción
La agricultura es una industria fundamental para la economía argentina, ya que proporciona alimentos, ingresos y empleo a millones de personas. En este contexto, la toma de decisiones basada en datos se convierte en un factor crítico para garantizar la eficiencia y sostenibilidad de esta industria.

## Antecedentes
Los datos utilizados en este proyecto provienen de fuentes confiables, tales como el Instituto Nacional de Estadística y Censos (INDEC) y el Ministerio de Agricultura, Ganadería y Pesca de Argentina. Estos datos abarcan múltiples campañas agrícolas, desde 1969 hasta el año 2020, e incluyen información detallada sobre la superficie sembrada, superficie cosechada, rendimiento y producción de diversos cultivos.

##### Características del Conjunto de Datos

| Característica        | Descripción                                       |
|-----------------------|---------------------------------------------------|
| Superficie sembrada   | Área de tierra que se plantó con un cultivo      |
| Superficie cosechada  | Área de tierra de la superficie sembrada que se cosechó |
| Rendimiento           | Cantidad de producción de un cultivo por unidad de superficie |
| Producción            | Cantidad total de producción de un cultivo       |

## Metodología

El proceso se dividió en dos partes: la preparación y el análisis de datos, y la implementación de modelos de aprendizaje automático.

### Parte 1: Preparación y Análisis de Datos

1. **Importación de Librerías Necesarias**: Se importaron librerías de Python esenciales para llevar a cabo tareas de ciencia de datos y análisis de datos, tales como Pandas, NumPy, Matplotlib y Seaborn.

2. **Obtención de los Datos**: Se importaron los datos desde GitHub y se creó el DataFrame `df_agricola` para facilitar el análisis y manipulación de los datos.

3. **Descripción Estadística del DataFrame**: Se utilizó el método `describe()` de Pandas para obtener una descripción estadística del DataFrame, lo cual nos permitió comprender la distribución de los datos y detectar posibles valores atípicos (outliers).

4. **Análisis de los Valores Únicos de la Columna 'cultivo'**: Se generó una lista de los valores únicos presentes en la columna 'cultivo' del DataFrame, lo que proporcionó un panorama completo de los distintos tipos de cultivos en nuestros datos.

5. **Frecuencia de los Cultivos**: Se realizó un conteo y una visualización de la frecuencia de los cultivos, lo que permitió entender la distribución de los mismos en nuestros datos y detectar desbalances.

6. **Cambio de Nombre de Columnas**: Se procedió a renombrar ciertas columnas del DataFrame para hacerlas más manejables y comprensibles.

7. **Verificación de Duplicados**: Se llevó a cabo una verificación para asegurarse de que no existieran filas duplicadas en el DataFrame, garantizando así la integridad y unicidad de los datos.

### Parte 2: Implementación de Modelos de Aprendizaje Automático

En el archivo "machineLearning.ipynb", se describe la aplicación de técnicas de aprendizaje automático para predecir la producción agrícola. Se han desarrollado modelos de predicción para seis cultivos fundamentales: maíz, trigo, sorgo, avena, soja y girasol. A continuación, se detallan los pasos:

1. **Importación de Librerías Necesarias**: Se importaron las librerías de Python requeridas para realizar tareas de ciencia de datos y aprendizaje automático, como Pandas, NumPy, Matplotlib, Seaborn y Scikit-learn.

2. **Análisis de Clustering**: Se utilizó el algoritmo K-Means para agrupar los datos y determinar la cantidad óptima de modelos a entrenar. Se aplicó un análisis univariado y multivariado para identificar outliers y calcular la distancia de Mahalanobis.

3. **Creación de Modelos de Regresión**: Se desarrollaron varios modelos de regresión, incluyendo Naive Bayes, Regresión Lineal, Random Forest Regressor y Máquina de Soporte Vectorial (SVM). Estos modelos se ajustaron y evaluaron utilizando conjuntos de datos de entrenamiento y prueba.

4. **Selección de Características**: Se empleó el método SelectKBest de Scikit-learn para seleccionar las características más relevantes para la predicción de la producción de cultivos.

5. **Evaluación de Modelos con Características Seleccionadas**: Se evaluaron los modelos de regresión utilizando las características seleccionadas, considerando métricas como el Error Cuadrático Medio (MSE) y el Coeficiente de Determinación (R^2).

6. **Selección del Mejor Modelo**: Se seleccionó el modelo de regresión con mejor desempeño basado en las métricas de evaluación.

### Códigos Complementarios
Además, se desarrollaron códigos secundarios para ampliar el análisis y mejorar la predicción:

#### Código de Predicción de Rendimiento de Arroz
Se creó un código en Python para analizar y predecir el rendimiento del cultivo de arroz, incorporando variables adicionales como temperatura promedio, precipitación, humedad del suelo y fertilizantes.

#### Modelo de Red Neuronal para Predicción de Producción Agrícola
Se diseñó un código que describe el proceso de entrenar una red neuronal para predecir la producción agrícola en Argentina. El estudio se centra en las características de superficie sembrada y superficie cosechada.

##### Pasos para Crear el Modelo

1. Selección de características y variable objetivo
2. División de datos en conjuntos de entrenamiento y prueba
3. Normalización de datos
4. Creación del Modelo de Red Neuronal
5. Compilación del Modelo
6. Entrenamiento del Modelo
7. Evaluación del Modelo

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

## Referencias

- [Repositorio del Proyecto](https://github.com/Marianod2003/Proyectogrupo21)
- [Tablero del Proyecto](https://github.com/users/Marianod2003/projects/3)
