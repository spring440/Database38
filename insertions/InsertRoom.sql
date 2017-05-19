CREATE PROC insertRoom
  AS
  BEGIN
    BEGIN TRY
	INSERT INTO Room VALUES ('Music Box (5-46)', 626, 25);
	INSERT INTO Room VALUES  ('Winter Garden (5-46)', 626, 45);
	INSERT INTO Room VALUES ('Broadway (5-30)', 626, 20);
	INSERT INTO Room VALUES ('Majestic (5-18)', 626, 25);
	INSERT INTO Room VALUES ('Marquis (5-18)', 626, 45);
	INSERT INTO Room VALUES ('Imperial (5-18)', 626, 75);
	INSERT INTO Room VALUES ('Brooks Atkinson (5-16)', 626, 25);
	INSERT INTO Room VALUES ('Central Park West (6-200)', 626, 25);
	END TRY
    BEGIN CATCH
    END CATCH
  END
GO

EXEC insertRoom
GO
