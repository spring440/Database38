CREATE PROCEDURE insertPresentation
(
@Speaker nvarchar(50),
@Presentation nvarchar(100)
)
AS
BEGIN TRY
	INSERT INTO PresenterPresentation (presentationSpeaker, presentationTitle) VALUES (@Speaker, @Presentation);
END TRY
BEGIN CATCH
	PRINT N'AN ERROR OCCURRED WITH PROCEDURE insertPresentation. COULD NOT INSERT DATA';
END CATCH;
GO


--DELETE FROM PresenterPresentation
--GO		
Execute insertPresentation 'Speaker1', 'Presentation1'
GO 
Execute insertPresentation 'Speaker1', 'Presentation2'
GO

SELECT * FROM PresenterPresentation
GO

-----------------------------------------------------------------

ALTER PROCEDURE selectPresPerTrack
(
@Event int,
@Level int
)
AS
BEGIN TRY
--  SELECT * FROM PresenterPresentation INNER JOIN Event ON @Event = Event.locationId
--  INNER JOIN ClassLevel ON ClassLevel.classLevelId = @Level;

		SELECT * FROM PresenterPresentation
		INNER JOIN ClassLevel ON PresenterPresentation.classLevelId = ClassLevel.classLevelId 
		INNER JOIN Event ON PresenterPresentation.eventId = Event.eventId
		WHERE  PresenterPresentation.classLevelId = @level AND PresenterPresentation.eventId = 626

END TRY
BEGIN CATCH
	PRINT N'AN ERROR OCCURRED WITH PROCEDURE selectPresentation. COULD NOT SELECT DATA';
END CATCH;
GO

-- The first parameter 626 is for the locationId of Budapest (see Location table)
-- The second parameter 2 is the trackId for a certain track, there are 4 tracks total (see Track table)

EXEC selectPresPerTrack 626,1