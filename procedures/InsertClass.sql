CREATE PROC insertClass
  AS
  BEGIN
    BEGIN TRY
		INSERT INTO Class VALUES (	1	, 626	,	'SQL SATURDAY DEV', 'Intro', 4, 60, 6, 1, 6	);
		END TRY
    BEGIN CATCH
    END CATCH
  END
GO

EXEC insertClass 
GO
