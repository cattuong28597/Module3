SELECT 
Class.ClassId,
Class.ClassName,

Student.StudentName
FROM Student
JOIN Class 
ON Student.ClassId = Class.ClassId 
WHERE Student.ClassId = 1

UNION 

SELECT 
Class.ClassId,
Class.ClassName,

Student.StudentName
FROM Student
JOIN Class 
ON Student.ClassId = Class.ClassId 
WHERE Student.ClassId = 2;
