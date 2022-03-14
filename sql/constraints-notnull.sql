USE [Curso];

GO

CREATE TABLE [Aluno](
    [Id] INT NOT NULL,
    [Nome] NVARCHAR NOT NULL,
    [Nascimento] DATETIME NULL,
    [Ativo] BIT
);

GO

-- Se tiver valores nulos na coluna é necessário dar um valor default
UPDATE TABLE [Aluno]
SET [Ativo] = 0
WHERE
    [Ativo] IS NULL;

GO

ALTER TABLE [Aluno]
    ALTER COLUMN [Ativo] BIT NOT NULL;

GO
