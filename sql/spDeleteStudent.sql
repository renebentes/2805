CREATE OR ALTER PROCEDURE [spDeleteStudent] (
    @StudentId UNIQUEIDENTIFIER
)
AS

BEGIN TRANSACTION
    DELETE
    FROM
        [spStudentCourse]
    WHERE
        [StudentId] = @StudentId

    DELETE
    FROM
        [Student]
    WHERE
        [Id] = @StudentId
COMMIT