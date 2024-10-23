


                                            ---Guía Básica de SQL----
 

1. SELECT (Seleccionar Datos)
            El comando SELECT se utiliza para consultar datos en una base de datos.
            
            
            Sintaxis básica:

            SELECT column1, column2, ......
            FROM table_name;


    Ejemplo:

        SELECT nombre, apellido
        FROM empleados;
           
    Seleccionar todas las columnas:


        SELECT * 
        FROM empleados;


    Usar DISTINCT para eliminar duplicados:

         SELECT DISTINCT ciudad
        FROM clientes;


2. WHERE (Condiciones)

    El comando WHERE se utiliza para filtrar los resultados de la consulta.

Sintaxis básica:

        SELECT column1, column2
        FROM table_name
        WHERE condition;

    
    Ejemplo:

        SELECT nombre, salario
        FROM empleados
        WHERE salario > 50000;


Operadores comunes en WHERE:

=: igual a
!= o <>: diferente a
>: mayor que
<: menor que
>=: mayor o igual
<=: menor o igual
BETWEEN: dentro de un rango
IN: dentro de una lista de valores
LIKE: coincide con un patrón (para cadenas)
IS NULL: es nulo


Ejemplo usando LIKE y IN:

        SELECT nombre
        FROM clientes
        WHERE nombre LIKE 'A%';  -- Empieza con "A"

        SELECT nombre
        FROM empleados
        WHERE id IN (1, 2, 3);

3. ORDER BY (Ordenar Resultados)

    El comando ORDER BY se usa para ordenar los resultados de una consulta.

Sintaxis básica:

        SELECT column1, column2
        FROM table_name
        ORDER BY column1 [ASC|DESC];


Ejemplo:

        SELECT nombre, salario
        FROM empleados
        ORDER BY salario DESC;  -- Ordena por salario de mayor a menor

4. JOIN (Unir Tablas)

    Se utiliza para combinar filas de dos o más tablas basadas en una condición relacionada.

    Tipos comunes de JOIN:


        INNER JOIN: devuelve solo las filas que tienen coincidencias en ambas tablas.
        LEFT JOIN: devuelve todas las filas de la tabla izquierda, y las coincidencias de la tabla derecha.
        RIGHT JOIN: devuelve todas las filas de la tabla derecha, y las coincidencias de la tabla izquierda.


   Sintaxis básica:

        SELECT column1, column2
        FROM table1
        INNER JOIN table2
        ON table1.common_field = table2.common_field;

    Ejemplo:

        SELECT empleados.nombre, departamentos.nombre
        FROM empleados
        INNER JOIN departamentos
        ON empleados.depto_id = departamentos.id;


5. GROUP BY (Agrupar Resultados)
Agrupa filas que tienen los mismos valores en una o más columnas.

Sintaxis básica:

        SELECT column1, COUNT(*)
        FROM table_name
        GROUP BY column1;

Ejemplo:

        SELECT departamento, COUNT(*)
        FROM empleados
        GROUP BY departamento;


6. HAVING (Filtrar con Agregaciones)

Se utiliza para filtrar datos después de aplicar funciones de agregación.

    Sintaxis básica:

        SELECT column1, COUNT(*)
        FROM table_name
        GROUP BY column1
        HAVING COUNT(*) > 2;

Ejemplo:

        SELECT departamento, COUNT(*)
        FROM empleados
        GROUP BY departamento
        HAVING COUNT(*) > 5;  -- Solo departamentos con más de 5 empleados


7. INSERT INTO (Insertar Datos)

    Inserta nuevos registros en una tabla.

    Sintaxis básica:

        INSERT INTO table_name (column1, column2, ...)
        VALUES (value1, value2, ...);


        Ejemplo:

        INSERT INTO empleados (nombre, puesto, salario)
        VALUES ('Carlos', 'Desarrollador', 60000);

       
8. UPDATE (Actualizar Datos)


Se utiliza para modificar registros existentes.
Sintaxis básica:    

        UPDATE table_name
        SET column1 = value1, column2 = value2
        WHERE condition;

    Ejemplo:

            UPDATE empleados
            SET salario = 65000
            WHERE nombre = 'Carlos';


9. DELETE (Eliminar Datos)


Elimina filas de una tabla.

Sintaxis básica:

            DELETE FROM table_name
            WHERE condition;


Ejemplo:

            DELETE FROM empleados
            WHERE nombre = 'Carlos';


10. Funciones de Agregación

Estas funciones realizan cálculos sobre un conjunto de valores y devuelven un solo valor.

    COUNT(): cuenta el número de filas.
    SUM(): suma los valores de una columna.
    AVG(): calcula el promedio.
    MAX(): devuelve el valor máximo.
    MIN(): devuelve el valor mínimo.

Ejemplos:

        SELECT COUNT(*) FROM empleados;  -- Cuenta todos los empleados

        SELECT AVG(salario) FROM empleados;  -- Calcula el salario promedio

11. LIMIT (Limitar Resultados)

    Se utiliza para limitar el número de filas devueltas por una consulta.

Sintaxis básica:

        SELECT column1, column2
        FROM table_name
        LIMIT 10;


Ejemplo:

        SELECT nombre, salario
        FROM empleados
        ORDER BY salario DESC
        LIMIT 5;  -- Devuelve los 5 empleados con los salarios más altos


12. Subconsultas
Una subconsulta es una consulta dentro de otra consulta.

Sintaxis básica:


    SELECT column1
    FROM table_name
    WHERE column2 = (SELECT MAX(column2) FROM table_name);

Ejemplo:

    SELECT nombre
    FROM empleados
    WHERE salario = (SELECT MAX(salario) FROM empleados);  -- Empleado con el salario más alto



