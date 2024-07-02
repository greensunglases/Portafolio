# Portafolio 1

Censo agropecuario 2021 Chile, seccion cereales

El archico csv que use para este analisis fue descargado de la pagia del instituto nacional de estadistica (Chile)
https://www.ine.gob.cl/estadisticas/economia/agricultura-agroindustria-y-pesca/censos-agropecuarios
Censo agropecuario > bases de datos > 2021 > actividad silvo agropecuaria > CSV > seccion_9_cereales.

Los datos estan relacionados con el cultivo de cereales (trigo, maiz, avena, entre otros) en Chile (2021)
 
Este repositorio contiene una colección de consultas SQL relacionadas con la tabla `censoagropecuario`. 

Nombres de las columnas :
Establecimiento, Predio, Cut_region, Region, Cut_comuna, Comuna, Cut_especie, Especie, Superficieriego, Superficiesecano, Cut_tiporiego, Tiporiego, Superficietiporiego

## Consultas incluidas

1. Seleccionar todas las filas para visualizar la estructura y datos.
2. Agrupar por Región y contar el número de Establecimientos.
3. Calcular la superficie total regada y de secano por Comuna.
4. Listar las especies y el tipo de riego asociado.
5. Filtrar datos para un Establecimiento específico y ver detalles.
6. Obtener la superficie total por tipo de riego en una región específica.
7. Relacionar especies y tipos de riego en diferentes regiones.
8. Comparar superficies regadas y no regadas entre diferentes comunas.
9. Especies que consumen más agua.
10. Especies y la suma entre superficie de riego y superficie de secano.
11. Especies y la suma de superficies de riego y secano por región.
12. Superficie total combinada de riego y secano.
