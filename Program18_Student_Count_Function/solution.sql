use collegeDBbca;
DELIMITER//
CREATE FUNCTION CountStudents(p_departmentID INT)
	RETURNS INT 
    DETERMINISTIC
BEGIN
	DECLARE student_count INT;
    SELECT COUNT(*)
    INTO student_count
    FROM student
    WHERE departmentID = p_departmentID;
    RETURN student_count;
END//
DELIMITER;
SELECT countStudent(10)AS totalStudents;
