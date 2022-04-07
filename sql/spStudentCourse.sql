CREATE OR ALTER PROCEDURE [spStudentCourse] (
    @StudentId UNIQUEIDENTIFIER
)
AS

SELECT
    [Student].[Name] AS [Student],
    [Course].[Title] AS [Course],
    [StudentCourse].[Progress],
    [StudentCourse].[LastUpdateDate]
FROM
    [StudentCourse]
INNER JOIN 
    [Student]
ON
    [StudentCourse].[StudentId] = [Student].[Id] 
INNER JOIN 
    [Course]
ON
    [StudentCourse].[CourseId] = [Course].[Id]
WHERE
    [Student].[Id] = @StudentId
    AND [StudentCourse].[Progress] BETWEEN 0 AND 100
ORDER BY
    [StudentCourse].[LastUpdateDate] DESC