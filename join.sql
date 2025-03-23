CREATE DATABASE joins;
USE joins;

CREATE TABLE student(
	student_id INT PRIMARY KEY,
    name VARCHAR(20)
);

CREATE TABLE course(
	student_id INT PRIMARY KEY,
    course VARCHAR(20)
);

INSERT  INTO student
(student_id,name)
VALUES
(101,"adam"),
(102,"bob"),
(103,"casey");

INSERT  INTO course
(student_id,course)
VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");

SELECT * FROM student INNER JOIN course ON student.student_id=course.student_id;
SELECT * FROM student LEFT JOIN course ON student.student_id=course.student_id
UNION
SELECT * FROM student RIGHT JOIN course ON student.student_id=course.student_id;
SELECT * FROM student RIGHT JOIN course ON student.student_id=course.student_id WHERE student.student_id IS NULL;