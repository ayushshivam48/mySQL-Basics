CREATE DATABASE college1 ;
USE college1;

CREATE TABLE students(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO students
(rollno,name,marks,grade,city)
VALUES
(101,"anil",78,"C","Delhi"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Delhi"),
(104,"dhruv",96,"A","Mumbai"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Pune");

SELECT * FROM students;
SELECT name,marks FROM students;
SELECT DISTINCT city FROM students;
SELECT * FROM students WHERE grade="F";
SELECT * FROM students WHERE marks+10<100 AND marks+10>90;
SELECT * FROM students WHERE marks BETWEEN 90 AND 100;
SELECT * FROM students LIMIT 3;
SELECT * FROM students ORDER BY grade ASC;
SELECT AVG(marks) FROM students;
SELECT grade,COUNT(name) FROM students GROUP BY grade ORDER BY grade ASC;

SELECT name,marks FROM students WHERE marks>(SELECT AVG(marks) FROM students);