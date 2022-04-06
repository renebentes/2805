CREATE OR ALTER PROCEDURE [spListCourse]
    @Category NVARCHAR(60)
AS
    DECLARE @CategoryId INT
    SET @CategoryId = (SELECT [Id] FROM [Categoria] WHERE [Nome] = @Category)

    SELECT
        *
    FROM
        [Curso]
    WHERE
        [CategoriaId] = @CategoryId
