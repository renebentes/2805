-- UNION - Unir duas queries (as colunas precisam ser do mesmo tipo de dado)
-- UNION ALL - Executa um DISTINCT

SELECT TOP 10
    [Id],
    [Nome]
FROM
    [Curso]
UNION ALL
SELECT TOP 10
    [Id],
    [Nome]
FROM
    [Categoria]
