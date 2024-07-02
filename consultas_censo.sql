-- Nombres de las columnas :
-- Establecimiento, Predio, Cut_region, Region, Cut_comuna, Comuna, Cut_especie, Especie, Superficieriego, Superficiesecano, Cut_tiporiego, Tiporiego, Superficietiporiego

-- Seleccionar todas las filas para visualizar la estructura y datos.
SELECT * FROM censoagropecuario;

-- Agrupar por Región y contar el número de Establecimientos.
SELECT Region, COUNT(DISTINCT Establecimiento) AS NumEstablecimientos
FROM censoagropecuario
GROUP BY Region;

-- Calcular la superficie total regada y de secano por Comuna.
SELECT Comuna, 
       SUM(Superficieriego) AS TotalSuperficieriego, 
       SUM(Superficiesecano) AS TotalSuperficiesecano
FROM censoagropecuario
GROUP BY Comuna;

-- Listar las especies y el tipo de riego asociado.
SELECT Especie, Tiporiego, SUM(Superficietiporiego) AS TotalSuperficietiporiego
FROM censoagropecuario
GROUP BY Especie, Tiporiego;

-- Filtrar datos para un Establecimiento específico y ver detalles.
SELECT * 
FROM censoagropecuario
WHERE Establecimiento = 'NombreDelEstablecimiento';

-- Obtener la superficie total por tipo de riego en una región específica.
SELECT Region, Tiporiego, SUM(Superficietiporiego) AS TotalSuperficietiporiego
FROM censoagropecuario
WHERE Region = 'NombreDeLaRegion'
GROUP BY Tiporiego;

-- Relacionar especies y tipos de riego en diferentes regiones.
SELECT Region, Especie, Tiporiego, SUM(Superficietiporiego) AS TotalSuperficietiporiego
FROM censoagropecuario
GROUP BY Region, Especie, Tiporiego;

-- Comparar superficies regadas y no regadas entre diferentes comunas.
SELECT Comuna, 
       SUM(Superficieriego) AS TotalSuperficieriego, 
       SUM(Superficiesecano) AS TotalSuperficiesecano
FROM censoagropecuario
GROUP BY Comuna
ORDER BY TotalSuperficieriego DESC;

-- Especies que consumen más agua.
SELECT Especie, 
       SUM(Superficieriego) AS TotalSuperficieriego
FROM censoagropecuario
GROUP BY Especie
ORDER BY TotalSuperficieriego DESC;

-- Especies y la suma entre superficie de riego y superficie de secano.
SELECT Especie, 
       SUM(Superficieriego + Superficiesecano) AS TotalSuperficie
FROM censoagropecuario
GROUP BY Especie
ORDER BY TotalSuperficie DESC;

-- Especies y la suma de superficies de riego y secano por región.
SELECT Region, 
       Especie, 
       SUM(Superficieriego) AS TotalSuperficieriego,
       SUM(Superficiesecano) AS TotalSuperficiesecano,
       SUM(Superficieriego + Superficiesecano) AS TotalSuperficie
FROM censoagropecuario
GROUP BY Region, Especie
ORDER BY TotalSuperficie DESC;

-- Superficie total combinada de riego y secano.
SELECT SUM(Superficieriego + Superficiesecano) AS TotalSuperficie
FROM censoagropecuario
