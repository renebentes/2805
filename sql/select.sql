-- ASC - do menor para o maior - padrão
-- DESC - do maior para o menor
SELECT TOP 10
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
ORDER BY
    [Nome] DESC
