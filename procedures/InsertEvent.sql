 CREATE PROC insertEvents
  AS
  BEGIN
    BEGIN TRY
	INSERT INTO Events VALUES (626, 'SQLSaturday #626 - Budapest 2017','6-May-17',626,20);
	INSERT INTO Events VALUES (615, 'SQLSaturday #615 - Baltimore 2017','6-May-17',615,50);
	INSERT INTO Events VALUES (608, 'SQLSaturday #608 - Bogota 2017','13-May-17',608, 10);
	INSERT INTO Events VALUES (616, 'SQLSaturday #616 - Kyiv 2017','20-May-17',616, 200);
	INSERT INTO Events VALUES (588, 'SQLSaturday #588 - New York City 2017','20-May-17',588, 205);
	INSERT INTO Events VALUES (630, 'SQLSaturday #630 - Brisbane 2017','27-May-17',630, 105);
	INSERT INTO Events VALUES (599, 'SQLSaturday #599 - Plovdiv 2017','27-May-17',599, 99);
	INSERT INTO Events VALUES (638, 'SQLSaturday #638 - Philadelphia 2017','3-Jun-17',638, 33);

	END TRY
    BEGIN CATCH
    END CATCH
  END
  GO

EXEC insertEvents
GO
