-- INNER JOIN - Junção interna - intersecção
-- LEFT [ OUTER ] JOIN - Junção externa esquerda - retorna todos da esquerda
-- RIGHT [ OUTER ] JOIN - Junção externa direita - retorna todos da direita
-- FULL [ OUTER ] JOIN - Junção externa completa - retorna todos
-- CROSS JOIN - União cruzada - retorna a combinação para cada linha entre as tabelas - Produto cartesiano

SELECT TOP 10
    [Curso].[Id],
    [Curso].[Nome],
    [Categoria].[Id] AS [Categoria],
    [Categoria].[Nome],
FROM
    [Curso]
FULL OUTER JOIN [Categoria] ON
    [Curso].[CategoriaId] = [Categoria].[Id]
