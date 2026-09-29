use collegeDBbca;
DELIMITER//
CREATE PROCEDURE InsertStudent(
	IN p_studentID INT,
    IN p_studentName VARCHAR(100),
    IN p_departmentID INT
)
BEGIN 
	INSERT INTO student
    (studentID,studentName,departmentID)
    VALUES
    (p_studentID,p_studentName,p_deprtmentID);
END //
DELIMITER;
CALL Insertstudent(101,'Arun',10);
