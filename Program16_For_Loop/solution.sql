use collegeDBbca;
DELIMITER//
CREATE PROCEDURE DisplayNumbers()
BEGIN
	DECLAER i INT DEFAULT 1;
    WHILE  i<=10 DO
		SELECT i AS Number;
        SET i=i+1;
	END WHILE;
END //
DELIMITER;
CALL DisplayNumbers();
