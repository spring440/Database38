USE s17guest38
GO

--non referenced tables

IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Country')
	DROP TABLE Country;

CREATE TABLE Country(
		countryId	int	PRIMARY KEY IDENTITY NOT NULL,
		countryCode	nvarchar(2)	NOT NULL,
		countryName nvarchar(25)NOT NULL)
GO


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'room')
	DROP TABLE Room;

CREATE TABLE Room(
		roomId	int	PRIMARY KEY IDENTITY NOT NULL,
		roomDesc	nvarchar(100)	NOT NULL,
		eventId	int	,
		occupancy	int	NOT NULL)
GO


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Sponsorlevel')
	DROP TABLE Sponsorlevel;

CREATE TABLE SponsorLevel(
		sponsorLevelId	int	IDENTITY PRIMARY KEY NOT NULL,
		sponsorLevelDesc nvarchar(20)	UNIQUE NOT NULL)
GO


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Track')
	DROP TABLE Track;

CREATE TABLE Track (
		trackId	int PRIMARY KEY IDENTITY NOT NULL,
		trackDesc	nvarchar(50)	UNIQUE NOT NULL,)
GO


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'ClassLevel')
	DROP TABLE ClassLevel;

CREATE TABLE ClassLevel(
		classLevelId	int	PRIMARY KEY IDENTITY NOT NULL,
		classLevelDescr nvarchar(50) UNIQUE NOT NULL)
GO


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Role')
	DROP TABLE Role;

CREATE TABLE Role(
		roleId	int	PRIMARY KEY IDENTITY NOT NULL,
		roleDesc	nvarchar(50))
GO


	




	--tables with forign keys


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'StateProvince')
	DROP TABLE StateProvince;

CREATE TABLE StateProvince(
		stateId		int PRIMARY KEY IDENTITY NOT NULL,
		stateCode	nvarchar(3)	UNIQUE NOT  NULL,
		stateName	nvarchar(25) NOT NULL,
		countryId	int	NOT NULL	REFERENCES Country)
GO


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Attendee')
	DROP TABLE Attendee;

CREATE TABLE Attendee(
		attendeeId	int	PRIMARY KEY IDENTITY NOT NULL,
		attendeeLast	nvarchar(25)	NOT NULL,
		attendeeFirst	nvarchar(25)	NOT NULL,
		street	nvarchar(50)	NOT NULL,
		city	nvarchar(25)	NOT NULL,
		zip		nvarchar(15),		
		email	nvarchar(50),
		stateId	int  NOT NULL REFERENCES StateProvince)
GO


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Location')
	DROP TABLE Location;

CREATE TABLE Location(
		locationId	int	PRIMARY KEY NOT NULL,
		locationAddress nvarchar(50)	NOT NULL,
		locationZip nvarchar(15),
		phone	nvarchar(15),
		stateId	int	NOT NULL	REFERENCES StateProvince)
GO


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Events')
	DROP TABLE Events;

CREATE TABLE Events(
		eventId		int	PRIMARY KEY NOT NULL,
		eventDescr	nvarchar(75)	NOT NULL,
		eventDate	date	NOT NULL,		
		locationId	int		NOT NULL	REFERENCES Location,
		attendeeId	int		NOT NULL	REFERENCES Attendee)
GO

				
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'sponsor') --
	DROP TABLE Sponsor;

CREATE TABLE Sponsor(
		sponsorId	int	PRIMARY KEY IDENTITY NOT NULL,
		sponsorName	nvarchar(50)	NOT NULL,
		attendeeId	int	REFERENCES Attendee,
		sponsorLevel	int	REFERENCES SponsorLevel,
		eventId	int	REFERENCES Events)
GO

IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Class') --
	DROP TABLE Class;

CREATE TABLE Class(
		classId	nvarchar(10)	PRIMARY KEY NOT NULL, 
		eventId	int				REFERENCES Events,
		classTitle	nvarchar(25),
		classDescription	nvarchar(100),
		classLevelId	int	REFERENCES ClassLevel,
		classDuration	int	NOT NULL,
		attendeeId	int	REFERENCES Attendee,
		trackId	int	REFERENCES Track,
		roomId	int	REFERENCES Room)
GO


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Schedule') --
	DROP TABLE Schedule;

CREATE TABLE Schedule(
		scheduleId	int	PRIMARY KEY IDENTITY NOT NULL,
		eventId	int	REFERENCES Events,
		classId	nvarchar(10)	REFERENCES Class,
		roomId	int	REFERENCES Room,
		scheduledTime	nvarchar(5)	NOT NULL,
		unique (eventId, roomId))
GO


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Raffle')
	DROP TABLE Raffle;

CREATE TABLE Raffle(
		raffleId	int	PRIMARY KEY IDENTITY NOT NULL,
		eventId	int	REFERENCES Events,
		AttendeeId	int	REFERENCES Attendee,
		sponsorId	int	REFERENCES Sponsor)
GO	


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'PersonRole')
	DROP TABLE PersonRole;

CREATE TABLE PersonRole(
		roleId	int	NOT NULL	REFERENCES Role,
		attendeeId	int	NOT NULL	REFERENCES Attendee,
		eventId	int	NOT NULL	REFERENCES Events)
GO


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Presentation')
	DROP TABLE Presentation;

CREATE TABLE Presentation(
		presentationId	int	PRIMARY KEY IDENTITY NOT NULL,
		presentationName	nvarchar(50)	NOT NULL,
		presentation_desc	nvarchar(100)	NOT NULL,	
		classLevelId	int	REFERENCES ClassLevel,
		trackId	int	REFERENCES Track,
		roomId	int	REFERENCES Room,
		classId	nvarchar(10)	REFERENCES Class,
		eventId	int	REFERENCES Events)
GO


IF EXISTS (SELECT * FROM sys.tables WHERE name = 'PresenterPresentation')
		DROP TABLE PresenterPresentation;

CREATE TABLE PresenterPresentation(
		presentorPresentationId		int	PRIMARY KEY IDENTITY NOT NULL,
		presentationTitle	nvarchar(100)	NOT NULL,
		presentationSpeaker	nvarchar(25)	NOT NULL,
		classLevelId	int	REFERENCES ClassLevel,
		eventId	int	REFERENCES Events)
GO



