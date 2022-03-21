USE [master];

GO

DROP DATABASE [Cursos];
USE [Cursos];

GO

CREATE TABLE [Categoria](
    [Id] INT NOT NULL IDENTITY(1, 1),
    [Nome] NVARCHAR(80) NOT NULL,

    CONSTRAINT [PK_Categoria] PRIMARY KEY([Id])
);

GO

CREATE TABLE [Curso](
    [Id] INT NOT NULL IDENTITY(1, 1),
    [Nome] NVARCHAR(80) NOT NULL,
    [CategoriaId] INT NOT NULL,

    CONSTRAINT [PK_Curso] PRIMARY KEY([Id]),
    CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([CategoriaId]) REFERENCES [Categoria]([Id])
);

INSERT INTO [Categoria]([Nome]) VALUES ('Backend');
INSERT INTO [Categoria]([Nome]) VALUES ('Frontend');
INSERT INTO [Categoria]([Nome]) VALUES ('Mobile');

INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES ('Fundamentos do C#', 1);
INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES ('Fundamentos da OOP', 1);
INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES ('Angular', 2);
INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES ('Flutter', 3);
INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES ('Xamarin', 3);
