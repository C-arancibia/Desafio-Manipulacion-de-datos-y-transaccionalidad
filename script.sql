-- Crear una base de datos
CREATE DATABASE desafio_camila_arancibia_121;

-- Acceder a la base de datos creada
\c desafio_camila_arancibia_121;

-- Crear la tabla INSCRITOS si no existe
CREATE TABLE IF NOT EXISTS INSCRITOS (
    cantidad INT,
    fecha DATE,
    fuente VARCHAR(50)
);

-- Insertar datos en la tabla INSCRITOS
INSERT INTO INSCRITOS (cantidad, fecha, fuente) VALUES
(44, '2021-01-01', 'Blog'),
(56, '2021-01-01', 'Página'),
(39, '2021-01-02', 'Blog'),
(81, '2021-01-02', 'Página'),
(12, '2021-01-03', 'Blog'),
(91, '2021-01-03', 'Página'),
(48, '2021-01-04', 'Blog'),
(45, '2021-01-04', 'Página'),
(55, '2021-01-05', 'Blog'),
(33, '2021-01-05', 'Página'),
(18, '2021-01-06', 'Blog'),
(12, '2021-01-06', 'Página'),
(34, '2021-01-07', 'Blog'),
(24, '2021-01-07', 'Página'),
(83, '2021-01-08', 'Blog'),
(99, '2021-01-08', 'Página');

-- Consulta: ¿Cuántos registros hay en la tabla?
SELECT COUNT(*) AS total_registros FROM INSCRITOS;

-- Consulta: ¿Cuántos inscritos hay en total?
SELECT SUM(cantidad) AS total_inscritos FROM INSCRITOS;

-- Consulta: ¿Cuál o cuáles son los registros de mayor antigüedad?
SELECT * FROM INSCRITOS
WHERE fecha = (SELECT MIN(fecha) FROM INSCRITOS);

-- Consulta: ¿Cuántos inscritos hay por día?
SELECT fecha, SUM(cantidad) AS total_inscritos
FROM INSCRITOS
GROUP BY fecha
ORDER BY total_inscritos DESC
LIMIT 1;
