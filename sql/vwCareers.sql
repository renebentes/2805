CREATE OR ALTER VIEW vwCareers
AS
    SELECT
        [Career].[Id],
        [Career].[Title],
        [Career].[Url],
        COUNT([CareerItem].[CareerId]) AS [Courses]
    FROM
        [Career]
    INNER JOIN [CareerItem] ON [CareerItem].[CareerId] = [Career].[Id]
    GROUP BY
        [Career].[Id],
        [Career].[Title],
        [Career].[Url]