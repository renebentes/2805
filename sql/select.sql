SELECT TOP 10
    [Curso].[Id],
    [Curso].[Nome],
    [Categoria].[Id] AS [Categoria],
    [Categoria].[Nome],
FROM
    [Curso]
INNER JOIN [Categoria] ON
    [Curso].[CategoriaId] = [Categoria].[Id]
