use collegeDBbca;
CREATE TABLE Employee_log(
	message VARCHAR (255)
    created at timestamp default
    current_timestamp
);

DELIMITER//
CREATE TRIGGER afteremployee insert
AFTER INSERT ON employee
FOREACH ROW
BEGIN
	INSERT INTO employee_log(message)
    VALUES(
		CONCAT('new employee inserted:',
NEW.employeename)
):
END//
DELIMITER;
