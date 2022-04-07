INSERT INTO
    [Student]
VALUES (
    'cb7acc38-37a7-4cca-a995-230b3d9b8f94',
    'Rene Bentes Pinto',
    'hello@rene.dev',
    '12345678901',
    NULL,
    NULL,
    GETDATE()
);
GO

INSERT INTO
    [StudentCourse]
VALUES (
    '5baed79d-e717-9a35-8dc2-1a3500000000',
    'cb7acc38-37a7-4cca-a995-230b3d9b8f94',
    50,
    0,
    '2022-07-01 06:00:00',
    GETDATE()
);
GO