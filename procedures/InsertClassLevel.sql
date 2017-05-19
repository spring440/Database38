CREATE PROC insertClassLevel
  AS
  BEGIN
    BEGIN TRY
      INSERT INTO ClassLevel VALUES ('Beginner');
      INSERT INTO ClassLevel VALUES ('Intermediate');
      INSERT INTO ClassLevel VALUES ('Advanced');
      INSERT INTO ClassLevel VALUES ('Non_Technical');
    END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertClassLevel
  GO

