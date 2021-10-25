USE QuanLySinhVien;

-- SELECT Address, COUNT(StudentId) AS 'So luong hoc vien'
-- FROM Student
-- GROUP BY Address;

--  SELECT S.StudentId, S.StudentName, AVG(Mark)
--  FROM Student S JOIN Mark M ON S.StudentId = M.StudentId
--  GROUP BY S.StudentId, S.StudentName
-- HAVING AVG(Mark) > 9;

-- SELECT S.StudentId, S.StudentName, AVG(Mark)
-- FROM Student S JOIN Mark M ON S.StudentId = M.StudentId
-- GROUP BY S.StudentId, S.StudentName
-- HAVING AVG(Mark) >= ALL ( SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);

-- SELECT SubId, SubName, Credit, Statuss
-- FROM Subjects JOIN 
-- (SELECT MAX(Credit) AS HighestCredit
-- FROM Subjects) AS HC 
-- ON Credit = HC.HighestCredit;

-- SELECT SubId, SubName, Credit, Statuss
-- FROM Subjects JOIN
-- (SELECT SubId AS SI FROM Mark
-- JOIN 
-- (SELECT MAX(Mark) AS HighestMark FROM Mark) AS HM
-- ON Mark.Mark = HM.HighestMark) AS SubMark
-- ON Subjects.SubId = SubMark.SI;

SELECT S.StudentId, S.StudentName, AVG(Mark)
 FROM Student S JOIN Mark M ON S.StudentId = M.StudentId
 GROUP BY S.StudentId, S.StudentName
 ORDER BY AVG(Mark) DESC;