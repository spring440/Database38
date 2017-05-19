CREATE PROC insertSponsorLevel
  AS
  BEGIN
    BEGIN TRY
      INSERT INTO SponsorLevel VALUES ('Platinum');
      INSERT INTO SponsorLevel VALUES ('Gold');
      INSERT INTO SponsorLevel VALUES ('Silver');
      INSERT INTO SponsorLevel VALUES ('Bronze');
    END TRY
    BEGIN CATCH
    END CATCH
  END
GO

EXEC insertSponsorLevel
GO
