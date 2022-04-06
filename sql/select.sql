SELECT TOP 10
    [Categoria].[Nome],
    COUNT([Curso].[CategoriaId]) AS [Cursos]
FROM
    [Categoria]
INNER JOIN [Curso] ON
    [Categoria].[Id] = [Curso].[Id]
GROUP BY
    [Categoria].[Nome],
    [Curso].[CategoriaId] AS [Cursos]
HAVING
    COUNT([Curso].[CategoriaId]) > 1
