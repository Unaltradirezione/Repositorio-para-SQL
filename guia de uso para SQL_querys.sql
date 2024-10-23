                                        
                                        
                                        
                                        
                                                 ---Usos----

                                        ----1. SELECT (Seleccionar Datos)----

SELECT nombre, apellido
FROM empleados;

                --Seleccionar todas las columnas:---
SELECT * FROM empleados;

                ---Usar DISTINCT para eliminar duplicados:----
SELECT DISTINCT ciudad
FROM clientes;


                                        --2. WHERE (Condiciones)---

SELECT nombre, salario
FROM empleados
WHERE salario > 50000;

                --usando LIKE y IN:--

 SELECT nombre
FROM clientes
WHERE nombre LIKE 'A%';  -- Empieza con "A"

SELECT nombre
FROM empleados
WHERE id IN (1, 2, 3);



                                ---3. ORDER BY (Ordenar Resultados)---

SELECT nombre, salario
FROM empleados
ORDER BY salario DESC;  -- Ordena por salario de mayor a menor


                                ---4. JOIN (Unir Tablas)----


SELECT empleados.nombre, departamentos.nombre
FROM empleados
INNER JOIN departamentos
ON empleados.depto_id = departamentos.id;
                               
                               ---5. GROUP BY (Agrupar Resultados)---

SELECT departamento, COUNT(*)
FROM empleados
GROUP BY departamento;

                                ---6. HAVING (Filtrar con Agregaciones)---

SELECT departamento, COUNT(*)
FROM empleados
GROUP BY departamento
HAVING COUNT(*) > 5;  -- Solo departamentos con más de 5 empleados
                          


                                --- 7. INSERT INTO (Insertar Datos)----


INSERT INTO empleados (nombre, puesto, salario)
VALUES ('Carlos', 'Desarrollador', 60000);


                                ----8. UPDATE (Actualizar Datos)---

UPDATE empleados
SET salario = 65000
WHERE nombre = 'Carlos';

                        
                        
                                ------9. DELETE (Eliminar Datos)--------


DELETE FROM empleados
WHERE nombre = 'Carlos';


                                ----10. Funciones de Agregación-----


SELECT COUNT(*) FROM empleados;  -- Cuenta todos los empleados
SELECT AVG(salario) FROM empleados;  -- Calcula el salario promedio


                                ---11. LIMIT (Limitar Resultados) -----
SELECT nombre, salario
FROM empleados
ORDER BY salario DESC
LIMIT 5;  -- Devuelve los 5 empleados con los salarios más altos


                                        -----12. Subconsultas-------

SELECT  nombre
FROM empleados
WHERE salario = (SELECT MAX(salario) FROM empleados);  -- Empleado con el salario más alto





