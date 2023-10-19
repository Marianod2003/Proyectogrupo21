-- Primer paso: Creación de la tabla, cuyos atributos son el nombre de las columnas de nuestro archivo 'estimaciones-agricolas-Argentina.csv'
CREATE TABLE EstimacionesAgricolasArgentina
(
    id_provincia INT,
    provincia NVARCHAR(255),
    id_departamento INT,
    departamento NVARCHAR(255),
    id_cultivo INT,
    cultivo NVARCHAR(255),
    id_campania INT,
    campania NVARCHAR(255),
    sup_sembrada DECIMAL(10, 2),
    sup_cosechada DECIMAL(10, 2),
    produccion DECIMAL(10, 2),
    rendimiento DECIMAL(10, 2)
);

-- Luego importamos nuestro archivo .csv

BULK INSERT EstimacionesAgricolasArgentina
FROM 'C:\Users\marco\Desktop\estimaciones-agricolas-Argentina.csv' -- Definimos la ruta del archivo
WITH
(
   FIRSTROW = 2,   -- Especifica la fila desde la que se inicia la carga
   FIELDTERMINATOR = ',',  -- Especifica el delimitador de campo (coma en archivos CSV).
   ROWTERMINATOR = '\n'   -- Especifica el delimitador de fila (salto de línea en archivos CSV).
);

-- Seleccionamos todos los datos de la tabla
SELECT * FROM EstimacionesAgricolasArgentina;

-- Seleccionamos datos específicos de la tabla como: provincia, departamento, cultivo, sup_sembrada, sup_cosechada
SELECT provincia, departamento, cultivo, sup_sembrada, sup_cosechada
FROM EstimacionesAgricolasArgentina;

-- Podemos filtrar datos con una condición (por ejemplo, rendimiento mayor a 5000):
SELECT *
FROM EstimacionesAgricolasArgentina
WHERE rendimiento > 5000;

-- Podemos agrupar los datos y calcular el promedio del rendimiento por cultivo:
SELECT cultivo, AVG(rendimiento) AS Promedio_Rendimiento
FROM EstimacionesAgricolasArgentina
GROUP BY cultivo;

-- Podemos ordenar datos en función de una columna (por ejemplo, ordenar por provincia en orden alfabético):
SELECT *
FROM EstimacionesAgricolasArgentina
ORDER BY provincia;

-- También se puede calcular el total de la producción por campaña agrícola:
SELECT campania, SUM(produccion) AS Total_Produccion
FROM EstimacionesAgricolasArgentina
GROUP BY campania;

-- Calculamos el promedio de rendimiento por provincia y cultivo:
SELECT provincia, cultivo, AVG(rendimiento) AS Promedio_Rendimiento
FROM EstimacionesAgricolasArgentina
GROUP BY provincia, cultivo;

-- Encontrar los productos más cultivados en una provincia en una campaña específica:
SELECT provincia, campania, cultivo, SUM(sup_sembrada) AS Sup_Sembrada_Total
FROM EstimacionesAgricolasArgentina
WHERE campania = '1970/1971'
GROUP BY provincia, campania, cultivo
ORDER BY Sup_Sembrada_Total DESC;

-- Calculamos el rendimiento promedio en todas las campañas agrícolas para cada cultivo:
SELECT cultivo, AVG(rendimiento) AS Promedio_Rendimiento
FROM EstimacionesAgricolasArgentina
GROUP BY cultivo;

-- Para encontrar los 10 cultivos con la producción más alta en una campaña agrícola específica:
SELECT TOP 10 campania, cultivo, SUM(produccion) AS Produccion_Total
FROM EstimacionesAgricolasArgentina
WHERE campania = '1969/1970'
GROUP BY campania, cultivo
ORDER BY Produccion_Total DESC;

-- Para calcular el rendimiento promedio en función de la superficie sembrada:
SELECT cultivo, AVG(rendimiento / NULLIF(sup_sembrada, 0)) AS Rendimiento_Por_Hectarea
FROM EstimacionesAgricolasArgentina
GROUP BY cultivo;

-- Variabilidad del rendimiento por campaña agrícola (Desviación Estándar y Coeficiente de Variación)

-- Calculamos la desviación estándar del rendimiento por campaña agrícola
SELECT campania, STDEV(rendimiento) AS Desviacion_Estandar_Rendimiento
FROM EstimacionesAgricolasArgentina
GROUP BY campania
ORDER BY campania;

-- Calculamos el coeficiente de variación (CV), que se calcula como (Desviación Estándar / Promedio) * 100:
SELECT campania, (STDEV(rendimiento) / AVG(rendimiento)) * 100 AS Coeficiente_Variacion_Rendimiento
FROM EstimacionesAgricolasArgentina
GROUP BY campania
ORDER BY campania;


