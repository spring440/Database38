 CREATE PROC insertSponsor
  AS
  BEGIN
    BEGIN TRY
		INSERT INTO Sponsor VALUES ('VMWare' ,5,	1	,626);
		INSERT INTO Sponsor VALUES ('Verizon Digital Media Services' ,25,	1	,626);
		INSERT INTO Sponsor VALUES ('Microsoft Corporation (GAP) (GAP Sponsor)' ,100,	1,	626);
		INSERT INTO Sponsor VALUES ('Tintri' ,	33,1	,626);
		INSERT INTO Sponsor VALUES ('Amazon Web Services, LLC' ,127,	2	,626);
		INSERT INTO Sponsor VALUES ('Pyramid Analytics (GAP Sponsor)' ,66,	2	,626);
		INSERT INTO Sponsor VALUES ('Pure Storage' ,	89,2	,626);
		INSERT INTO Sponsor VALUES ('Profisee' ,189,	2	,626);
		INSERT INTO Sponsor VALUES ('NetLib Security' ,101,	3	,626);
		INSERT INTO Sponsor VALUES ('Melissa Data Corp.' ,23,	3	,626);
		INSERT INTO Sponsor VALUES ('Red Gate Software' ,177,3	,626);
		INSERT INTO Sponsor VALUES ('SentryOne' ,	77,3	,626);
		INSERT INTO Sponsor VALUES ('Hush Hush' ,	51,4	,626);
		INSERT INTO Sponsor VALUES ('COZYROC' ,	42,4	,626);
		INSERT INTO Sponsor VALUES ('SQLDocKit by Acceleratio Ltd.' ,99,	4	,626);	END TRY
    BEGIN CATCH
    END CATCH
  END
  GO

  EXEC insertSponsor
  GO