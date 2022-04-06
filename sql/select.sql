-- '%texto' - pesquisa por registro terminando com o que está após o %
-- 'texto%' - pesquisa por registro iniciando com o que está antes o %
-- 'texto%' - pesquisa por registro que contenha o que está entre os %
SELECT TOP 10
    *
FROM
    [Curso]
WHERE
    [Nome] LIKE '%a%';
