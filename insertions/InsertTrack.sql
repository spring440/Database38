CREATE PROC insertTrack
	AS
	BEGIN
	BEGIN TRY
	   	INSERT INTO Track VALUES ('Advanced Analysis Techniques');
    	INSERT INTO Track VALUES ('Analytics And Visualization');
   		INSERT INTO Track VALUES ('Application And Database Development');
   		INSERT INTO Track VALUES ('BI Information delivery');
     	INSERT INTO Track VALUES ('BI Platform Architecture');
     	INSERT INTO Track VALUES ('Cloud Application Development');
		INSERT INTO Track VALUES ('Development & Administration');
		INSERT INTO Track VALUES ('Enterprise Database Administration');
		INSERT INTO Track VALUES ('Professional Development');
		INSERT INTO Track VALUES ('Strategy and Architecture');
	END TRY
		BEGIN CATCH
		END CATCH
	END
GO

EXEC insertTrack
GO
