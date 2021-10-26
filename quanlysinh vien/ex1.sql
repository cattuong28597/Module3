SELECT * FROM Class;
SELECT * FROM Mark;
SELECT * FROM Student;
SELECT * FROM Subjects;

SELECT MAX(Credit) highestCredit FROM Subjects;

SELECT COUNT(studentName) 
FROM Student
WHERE ClassId = 1; 

SELECT UCASE(studentName) 
FROM Student;

SELECT LENGTH(studentName)
FROM Student;

SELECT 
Class.ClassId,
Class.ClassName,
Count(Student.StudentId) AS 'count'
FROM Student
JOIN Class ON Student.ClassId = Class.ClassId 
WHERE Student.Address = 'Hai Phong'
GROUP BY Class.ClassId, Class.ClassName 
HAVING count >= 0;


