USE [Curso];

GO

CREATE TABLE [Aluno](
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] NVARCHAR(180) NOT NULL,
    [Nascimento] DATETIME NULL,
    [Ativo] BIT NOT NULL DEFAULT(0),

    CONSTRAINT [PK_Aluno_Id] PRIMARY KEY([Id]),
    CONSTRAINT [UQ_Aluno_Email] UNIQUE([Email])
);

GO

-- Pode ser definido via ALTER TABLE, mas sempre precisamos tomar cuidado com
-- valores das colunas
ALTER TABLE [Aluno]
    ADD CONSTRAINT [UQ_Aluno_Email] UNIQUE([Email])

GO
