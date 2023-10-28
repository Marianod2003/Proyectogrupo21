# Procedimiento de Análisis y Predicción de Rendimiento de Cultivo

Este archivo Markdown explica el procedimiento utilizado en el código de Python para el análisis y predicción del rendimiento de cultivos, centrándose en el cultivo de arroz.

## 1. Carga de Datos

El código comienza por cargar datos de un archivo CSV llamado "estimaciones-agricolas-2020-08.csv" utilizando la biblioteca Pandas. Este archivo contiene información sobre estimaciones agrícolas.

## 2. Filtrado de Datos

Se filtran las filas del DataFrame para obtener solo las que contienen el cultivo de arroz. Esto se hace utilizando la función `str.contains` en la columna "cultivo". Las filas que contienen la palabra "Arroz" (sin distinción entre mayúsculas y minúsculas) se seleccionan.

### 2.1. Creacion de grafico de barras

Se toma la informacion de la columna provincia para destacar donde a sido mascultivo el arroz en toda la Argentina

## 3. Modelo de Regresión Lineal

### 3.1. Entrenamiento del Modelo de Regresión Lineal

Luego, se crea un modelo de regresión lineal utilizando la biblioteca Scikit-Learn. Este modelo utilizará las columnas "sup_sembrada" y "sup_cosechada" como variables predictoras (features) y la columna "rendimiento" como la variable objetivo (target).

El modelo se entrena utilizando los datos de arroz seleccionados.

### 3.2. Evaluación del Modelo

Se evalúa el rendimiento del modelo calculando el Error Cuadrático Medio (MSE) y el Coeficiente de Determinación (R^2) utilizando las predicciones del modelo en comparación con los valores reales.

## 4. Pronóstico para Futuros Valores

El código realiza pronósticos para futuros valores de rendimiento del cultivo de arroz. Se proporcionan valores ficticios para las columnas "sup_sembrada" y "sup_cosechada" y se utilizan estas variables para predecir el rendimiento estimado.

## 5. Generación de Datos Ficticios

El código genera datos ficticios para las nuevas columnas: "temperatura_promedio", "precipitación", "humedad_suelo" y "fertilizantes". Estos datos son ficticios y se generan dentro de rangos específicos.

## 6. Agregar Nuevas Columnas

Los datos ficticios generados se agregan al DataFrame de arroz. Ahora, el DataFrame contiene todas las variables utilizadas en el análisis y pronóstico.

## 7. Modelo de Regresión Lineal con Variables Adicionales

### 7.1. Entrenamiento del Modelo

Se crea un nuevo modelo de regresión lineal que incluye las variables adicionales ("temperatura_promedio", "precipitación", "humedad_suelo" y "fertilizantes"). El modelo se entrena utilizando estos datos adicionales.

### 7.2. Evaluación del Modelo

Se evalúa el rendimiento del nuevo modelo con las variables adicionales utilizando el MSE y el R^2.

## 8. Pronóstico para Futuros Valores con Variables Adicionales

Se realizan pronósticos para futuros valores de rendimiento de cultivo utilizando las variables adicionales. Se proporcionan valores ficticios para estas variables y se calcula el rendimiento estimado.

## 9. Visualización de Resultados

El código incluye una visualización de las predicciones frente a los valores reales. Se muestra un gráfico de dispersión para comparar los valores reales con las predicciones. Además, se muestra otro gráfico que ilustra la relación entre la temperatura promedio y el rendimiento.

Este procedimiento permite realizar un análisis y predicción del rendimiento de cultivos de arroz, teniendo en cuenta tanto las variables originales como las variables ficticias generadas.

[Nota: Los valores exactos pueden variar en cada ejecución debido a la generación de datos ficticios.]
