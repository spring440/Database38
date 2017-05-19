ALTER PROC PresentationLevelPresentation
		--ENTER A Level
		--IF NO TRACK ENTERED DEFAULT VALUE OF 2 IS USED
		--track #'s: 1,2,3,4,
		-- Event: 588, 626, 616
		(
			@Event int,
			@Level int
		)
--		@level INT = 2
	AS
	--If invalid data raise error
	BEGIN TRY
		SELECT * FROM PresenterPresentation
		INNER JOIN ClassLevel ON PresenterPresentation.classLevelId = ClassLevel.classLevelId 
		INNER JOIN Event ON PresenterPresentation.eventId = Event.eventId
		WHERE  PresenterPresentation.classLevelId = @level AND PresenterPresentation.eventId = @Event
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
  	DECLARE @ErrorSeverity INT;
  	DECLARE @ErrorState INT;
  	SELECT
    	@ErrorMessage = ERROR_MESSAGE(),
    	@ErrorSeverity = ERROR_SEVERITY(),
    	@ErrorState = ERROR_STATE();
  		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
GO

Execute PresentationLevelPresentation 626, 3
GO 
