# Proyecto Práctica Profesionalizante 1 - 2023 - Grupo 21

## Introducción

La agricultura es una industria vital en Argentina, que representa el 10% del PIB del país. La toma de decisiones basada en datos es esencial para optimizar la producción agrícola y gestionar los recursos de manera eficiente.

Este proyecto tiene como objetivo desarrollar un modelo de predicción para estimar la producción de cultivos en Argentina. El modelo se entrenará con un conjunto de datos que incluye información sobre la superficie sembrada, la superficie cosechada, el rendimiento y la producción de cultivos.

## Alcance

Los objetivos específicos del proyecto son:

- **Exploración de datos**: Comprender la distribución de cultivos en diferentes provincias y departamentos, así como las tendencias históricas.
- **Análisis de producción**: Investigar la producción agrícola a lo largo de diferentes campañas agrícolas y evaluar la variación de la producción en función de los cultivos.
- **Rendimiento de cultivos**: Analizar el rendimiento de cultivos específicos y evaluar los factores que pueden influir en él.
- **Predicción de producción**: Desarrollar un modelo de regresión para estimar la producción futura de cultivos en función de datos históricos.

## Datos

Los datos utilizados en el proyecto fueron recopilados por el INDEC y el Ministerio de Agricultura, Ganadería y Pesca de Argentina. Los datos abarcan múltiples campañas agrícolas, desde 1969 hasta el 2020. Los datos fueron revisados ​​para detectar errores y sesgos.

## Modelo de Red Neuronal para Predicción de Producción Agrícola
    
## Métodos

El proyecto utiliza un enfoque de ciencia de datos para analizar los datos. Las principales técnicas incluyen:

1. **Análisis exploratorio de datos**: Para comprender la distribución de los datos y identificar tendencias.
2. **Modelado de aprendizaje automático**: Para desarrollar un modelo de predicción.

## Modelo de Red Neuronal para Predicción de Producción Agrícola

El objetivo del proyecto es desarrollar un modelo que pueda predecir la producción agrícola con mayor precisión que los métodos tradicionales.

### Pasos para Crear el Modelo

**1. Selección de características y variable objetivo**

Las características seleccionadas son la superficie sembrada y la superficie cosechada. La variable objetivo es la producción agrícola.

**2. División de datos en conjuntos de entrenamiento y prueba**

Para entrenar el modelo de manera efectiva, dividimos los datos en dos conjuntos:

- **Conjunto de entrenamiento:** Utilizado para enseñar al modelo y permitirle aprender patrones a partir de los datos.
- **Conjunto de prueba:** Empleado para evaluar el desempeño del modelo en datos no vistos durante el entrenamiento.

**3. Normalización de datos**

La normalización es un proceso esencial que escala los datos para que todas las características tengan una escala similar, facilitando que el modelo aprenda de manera eficiente y precisa.

**4. Creación del Modelo de Red Neuronal**

El modelo consta de tres tipos de capas:

- **Capa de entrada:** Con dos neuronas, una para cada característica seleccionada.
- **Capa oculta:** Realiza operaciones matemáticas para aprender patrones, con 10 neuronas en este caso.
- **Capa de salida:** Genera la predicción final, que es la producción agrícola.

**5. Compilación del Modelo**

Antes del entrenamiento, configuramos cómo el modelo realizará cálculos y medirá su rendimiento:

- **Optimizador:** Utilizamos el optimizador "adam," un algoritmo de optimización.
- **Función de Pérdida:** La función de pérdida es "mean_squared_error," que mide la proximidad de las predicciones a los valores reales.
- **Métrica:** El modelo calcula la métrica "mean squared error (MSE)" durante el entrenamiento, una medida de la precisión.

**6. Entrenamiento del Modelo**

Entrenamos el modelo en el conjunto de entrenamiento durante 50 épocas (ciclos de entrenamiento) y en lotes de 32.

**7. Evaluación del Modelo**

Finalmente, evaluamos el rendimiento del modelo utilizando el conjunto de pruebas. Si el error cuadrático medio es bajo en este conjunto, significa que el modelo hace buenas predicciones en datos no vistos.

## Conclusiones

Este proyecto tiene el potencial de proporcionar información valiosa para la toma de decisiones en el sector agrícola argentino. Los resultados se presentarán en un informe final que se publicará en este repositorio.

## Tecnologías utilizadas

Este proyecto se desarrolló utilizando las siguientes tecnologías y bibliotecas:

- **Python:** Lenguaje de programación principal utilizado para el análisis de datos y la construcción del modelo.
- **Pandas:** Biblioteca para el análisis y manipulación de datos.
- **Numpy:** Biblioteca para operaciones numéricas y manipulación de matrices de datos.
- **Matplotlib:** Biblioteca para la visualización de datos.
- **Scipy:** Biblioteca para herramientas y algoritmos matemáticos.
- **Seaborn:** Biblioteca para crear gráficos estadísticos en Python.
- **Scikit-learn (sklearn):** Biblioteca para el aprendizaje automático.
- **Tensorflow:** Biblioteca de aprendizaje automático de código abierto desarrollada por Google.
- **Keras:** Librería de alto nivel para el aprendizaje automático de TensorFlow.
- **SQL:** Lenguaje de consulta para bases de datos relacionales.

## Ilustraciones

La gráfica siguiente muestra la distribución de cultivos en Argentina.

'Agregar grafico de distribución de cultivos'

## Recomendaciones para futuras investigaciones

Para futuras investigaciones, se podría explorar el uso de otras características para mejorar el rendimiento del modelo. Por ejemplo, se podría incluir información sobre el clima, el suelo y los precios de los cultivos.

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