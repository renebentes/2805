-- Usar as colunas de seleção na mesma ordem no Where
-- torna a consulta mais otimizada
SELECT TOP 10
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
WHERE
    [Id] = 1 OR
    [CategoriaId] >= 1
