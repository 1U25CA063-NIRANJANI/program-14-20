use collegeDBbca;
DELIMITER //
CREATE PROCEDURE Displaystudents()
BEGIN
	DECLARE done INT DEFAULT 0 ;
    DECLARE sid INT;
    DECLARE sname VARCHAR(100);
    DECLARE did INT;
DECLARE student_cursor cursor FOR 
	SELECT studentID,studentName,DepartmentID
    FROM student;
DECLARE continue handler for NOT found SET
done=1;
	OPEN student_cursor:
    read_loop:loop
		FETCH student_cursor INTO sid,sname,did;
	if done=1 THEN 
		LEAVE road_loop;
	end if;
    SELECT sid AS studentID,
		sname AS studentname,
        did AS departmentID,
	end loop;
		colse student_cursor;
END //
DELIMITER;
CALL DISPALY students();
