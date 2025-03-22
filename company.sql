CREATE DATABASE company;
USE company;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT NOT NULL
);

INSERT INTO employee
(id,name,salary)
VALUES
(101,"adam",25000),
(102,"bob",30000),
(103,"casey",40000);

SELECT * FROM employee;

 