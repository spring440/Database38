CREATE PROCEDURE DropTable
  AS
  BEGIN
  
	  DROP TABLE Schedule;
	  DROP TABLE Ruffle;
	  DROP TABLE Class;
  	  DROP TABLE PersonRole;
      DROP TABLE Role;;
	  DROP TABLE ClassLevel;
	  DROP TABLE Track;
	  DROP TABLE Sponsor;
	  DROP TABLE SponsorLevel;
	  DROP TABLE Room;
	  DROP TABLE Event;
	  DROP TABLE Location;
	  DROP TABLE Attendee;
	  DROP TABLE StatePro;
  	  DROP TABLE Country;
	  
--	  DROP TABLE ClassAttendee;
END

exec DropTable