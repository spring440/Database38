  CREATE PROC insertRole
  AS
  BEGIN
    BEGIN TRY
		INSERT INTO Role VALUES ('Presenter');
		INSERT INTO Role VALUES ('Attendee');
		INSERT INTO Role VALUES ('Organizer');
		INSERT INTO Role VALUES ('Volunteer');
		INSERT INTO Role VALUES ('Sponsor');
		INSERT INTO Role Values ('Vendor');
	END TRY
    BEGIN CATCH
    END CATCH
  END
  GO

  EXEC insertRole
  GO