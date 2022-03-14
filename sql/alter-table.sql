USE [Curso];

GO

ALTER TABLE [Aluno]
    ADD [Documento] NVARCHAR(11);

GO

ALTER TABLE [Aluno]
    DROP COLUMN [Documento];

GO

ALTER TABLE [Aluno]
    ALTER COLUMN [Documento] CHAR(11);

GO
