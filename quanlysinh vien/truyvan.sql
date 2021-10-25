USE QuanLySinhVien;
-- SELECT *
-- FROM Student
-- WHERE Statuss = true;

-- FROM Subjects
-- WHERE Credit < 10;

-- SELECT S.StudentId, S.studentName, C.ClassName
-- FROM Student S JOIN Class C ON S.ClassId = C.ClassID
-- WHERE C.ClassName = 'A1';

-- SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
-- FROM Student S JOIN Mark M ON S.StudentId = M.StudentId JOIN Subjects Sub ON M.SubId = Sub.SubId
-- WHERE Sub.SubName = 'CF';

-- SELECT * FROM Student 
-- WHERE Student.StudentName LIKE 'H%';

-- SELECT * FROM Class
-- WHERE Class.StartDate LIKE '%-12-%';

-- SELECT * FROM Subjects
-- WHERE Subjects.Credit BETWEEN 3 AND 5;

-- UPDATE Student 
-- SET ClassId = 2 WHERE StudentName = 'Hung';

SELECT 
	St.StudentName,
    Sj.SubName,
    M.Mark
FROM Mark AS M
INNER JOIN Student St ON M.StudentId = St.StudentId
INNER JOIN Subjects Sj ON M.SubId = Sj.SubId    
ORDER BY M.Mark DESC;