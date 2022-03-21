-- Não otimizado
SELECT * FROM [Curso];

-- Retorna os 10 primeiros
SELECT TOP 10 * FROM [Curso];

-- Delimitando as colunas a trazer, mais otimizado
SELECT TOP 10
    [Id], [Nome]
FROM
    [Curso]
