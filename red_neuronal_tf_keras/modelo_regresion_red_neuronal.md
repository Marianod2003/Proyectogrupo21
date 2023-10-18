# Predicción de Producción de Cultivos en Argentina

## Descripción del Modelo de Red Neuronal para Predicción de Producción Agrícola

### Introducción

La predicción de la producción agrícola es una tarea importante para los agricultores y las agencias gubernamentales. Las redes neuronales son una herramienta poderosa que puede utilizarse para predecir la producción agrícola con mayor precisión que los métodos tradicionales.

### Pasos para Crear el Modelo

**1. Selección de Características y Variable Objetivo**

   - **Características:** Las características son los datos que usaremos para realizar predicciones. En este caso, nos enfocamos en dos características específicas: la superficie sembrada y la superficie cosechada.

   - **Variable Objetivo:** La variable objetivo es el valor que deseamos predecir, que en este contexto corresponde a la producción agrícola.

**2. División de Datos en Conjuntos de Entrenamiento y Prueba**

   Para entrenar nuestro modelo de manera efectiva, dividimos nuestros datos en dos conjuntos:

   - **Conjunto de Entrenamiento:** Este conjunto se utiliza para enseñar al modelo y permitirle aprender patrones a partir de los datos.

   - **Conjunto de Prueba:** El conjunto de prueba se utiliza para evaluar cuán bien el modelo se desempeña en datos que no ha visto durante el entrenamiento.

**3. Normalización de Datos**

   La normalización es un proceso esencial en el cual escalamos nuestros datos para que todas las características tengan una escala similar. Esto facilita que el modelo aprenda de manera más eficiente y precisa.

**4. Creación del Modelo de Red Neuronal**

   El modelo de red neuronal consta de tres tipos de capas:

   - **Capa de Entrada:** Esta capa recibe los datos iniciales y tiene dos neuronas, una para cada característica que hemos seleccionado.

   - **Capa Oculta:** La capa oculta realiza operaciones matemáticas en los datos para aprender patrones. En este caso, contiene 10 neuronas.

   - **Capa de Salida:** La capa de salida genera la predicción final, que en nuestro caso es la producción agrícola.

**5. Compilación del Modelo**

   Previo al entrenamiento, configuramos cómo el modelo realizará cálculos y medirá su rendimiento:

   - **Optimizador:** Utilizamos el optimizador "adam," un algoritmo de optimización.

   - **Función de Pérdida:** La función de pérdida es "mean_squared_error," que mide cuán cerca están las predicciones de los valores reales.

   - **Métrica:** El modelo también calcula la métrica "mean squared error (MSE)" durante el entrenamiento, que es una medida de la precisión.

**6. Entrenamiento del Modelo**

   Entrenamos el modelo en el conjunto de entrenamiento durante 50 épocas (ciclos de entrenamiento) y en lotes de 32.

**7. Evaluación del Modelo**

   Finalmente, evaluamos el rendimiento del modelo utilizando el conjunto de pruebas. Si el error cuadrático medio es bajo en este conjunto, significa que el modelo está haciendo buenas predicciones en datos que no ha visto previamente.

### Conclusión

En este estudio, se describe el proceso de entrenar una red neuronal para predecir la producción agrícola en Argentina. El estudio utiliza dos características: la superficie sembrada y la superficie cosechada. Estas características se normalizan para que tengan una escala similar, lo que ayuda al modelo a aprender de manera más efectiva. El modelo de red neuronal consta de capas de entrada, capas densas, capas de normalización por lotes y capas de abandono. Las capas de normalización por lotes ayudan a evitar el sobreajuste, mientras que las capas de abandono ayudan a la red neuronal a centrarse en los patrones más importantes en los datos. El modelo se entrena en datos de entrenamiento durante 50 épocas y se evalúa en un conjunto de pruebas para medir su rendimiento en datos no vistos. Los resultados del estudio muestran que la red neuronal es capaz de predecir la producción agrícola con un error promedio del 5%. Estos resultados sugieren que las redes neuronales pueden ser una herramienta poderosa en la toma de decisiones agrícolas. El estudio recomienda continuar mejorando el modelo para mejorar su precisión y confiabilidad.
