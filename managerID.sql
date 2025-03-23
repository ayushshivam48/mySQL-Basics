CREATE DATABASE manager;
USE manager;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(20),
    manager_id INT
);

INSERT  INTO employee
(id,name,manager_id)
VALUES
(101,"adam",103),
(102,"bob",104),
(103,"casey",null),
(104,"donald",103);

SELECT * FROM employee;
SELECT a.name as manager_name, b.name FROM employee as a JOIN employee as b ON a.id=b.manager_id;

SELECT name FROM employee
UNION ALL
SELECT name FROM employee;