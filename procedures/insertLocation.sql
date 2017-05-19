CREATE PROC insertLocation
  AS
  BEGIN
    BEGIN TRY
	 INSERT INTO Location VALUES (626,'Budapest','00000','(xxx) xxx-xxxx)',12);
	 INSERT INTO Location VALUES (615,'Baltimore','00000','(xxx) xxx-xxxx)',5);
	 INSERT INTO Location VALUES (608,'Bogota','00000','(xxx) xxx-xxxx)',13);
	 INSERT INTO Location VALUES (616,'Kiev','00000','(xxx) xxx-xxxx)',14);
	 INSERT INTO Location VALUES (588,'New York City','00000','(xxx) xxx-xxxx)',17);
	 INSERT INTO Location VALUES (630,'Brisbane','00000','(xxx) xxx-xxxx)',10);
	 INSERT INTO Location VALUES (599,'Plovdic','00000','(xxx) xxx-xxxx)',16);
	 INSERT INTO Location VALUES (638,'Philadelphia','00000','(xxx) xxx-xxxx)',15);
	END TRY
    BEGIN CATCH
    END CATCH
  END
GO

EXEC insertLocation
GO
