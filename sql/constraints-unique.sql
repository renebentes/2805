USE [Curso];

GO

CREATE TABLE [Aluno](
    [Id] INT NOT NULL UNIQUE,
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] NVARCHAR(180) NOT NULL UNIQUE,
    [Nascimento] DATETIME NULL,
    [Ativo] BIT NOT NULL DEFAULT(0)
);

GO

-- Pode ser definido via ALTER TABLE, mas sempre precisamos tomar cuidado com
-- valores das colunas
ALTER TABLE [Aluno]
    ALTER COLUMN [Email] NVARCHAR(180) NOT NULL UNIQUE;

GO
