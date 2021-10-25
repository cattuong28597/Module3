-- USE QuanLySinhVien;
-- -- SELECT *
-- -- FROM Student
-- -- WHERE Statuss = true;

-- -- FROM Subjects
-- -- WHERE Credit < 10;

-- -- SELECT S.StudentId, S.studentName, C.ClassName
-- -- FROM Student S JOIN Class C ON S.ClassId = C.ClassID
-- -- WHERE C.ClassName = 'A1';

-- SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
-- FROM Student S JOIN Mark M ON S.StudentId = M.StudentId JOIN Subjects Sub ON M.SubId = Sub.SubId
-- WHERE Sub.SubName = 'CF';