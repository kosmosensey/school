--1
SELECT student.name AS student_name, student.age AS student_age, faculty.name AS faculty_name
FROM Student student
JOIN Faculty faculty ON student.faculty_id = faculty.id;
-- 2
SELECT student.name AS student_name, student.age AS student_age
FROM Student student
JOIN Avatar avatar ON student.id = avatar.student_id;