CREATE PROC insertStateProvince
  AS
  BEGIN
    BEGIN TRY
		INSERT INTO stateProvince VALUES ('AL','Alberta',2);
		INSERT INTO stateProvince VALUES ('BC','British Columbia',2);
		INSERT INTO stateProvince VALUES ('CA','California',4);
		INSERT INTO stateProvince VALUES ('ENG','England',3);
		INSERT INTO stateProvince VALUES ('MD','Maryland',4);
		INSERT INTO stateProvince VALUES ('NSW','New South Wales',1);
		INSERT INTO stateProvince VALUES ('OH','Ohio',4);
		INSERT INTO stateProvince VALUES ('OR','Oregon',4);
		INSERT INTO stateProvince VALUES ('QLD','Queensland',1);
		INSERT INTO stateProvince VALUES ('VIC','Victoria',1);
		INSERT INTO stateProvince VALUES ('WA','Washington',4);
		INSERT INTO stateProvince VALUES ('HUN','Budapest',5);
		INSERT INTO stateProvince VALUES ('BOG','Bogota',8);
		INSERT INTO stateProvince VALUES ('KI','Kiev',6);
		INSERT INTO stateProvince VALUES ('PA','Pennsylvania',4);
		INSERT INTO stateProvince VALUES ('PL','Plovdiv',7);
		INSERT INTO stateProvince VALUES ('NY','New York',4);
		END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertStateProvince
  GO
