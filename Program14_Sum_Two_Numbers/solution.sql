use collegeDBbca;
DELIMITER//
CREATE PROCEDURE SumTwoNumbers()
BEGIN
	DECLARE num1 INT DEFAULT 10;
    DECLARE num2 INT DEFAULT 20;
    DECLARE total INT;
    SET total = num1+num2;
    SELECT total AS sum;
END //
DELIMITER;
CALL SumTwoNumbers();
