-- 1. Create a Database
CREATE DATABASE college2;

-- 2. Use the Database
USE college2;

-- 3. Create a Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT
);

-- 4. Insert Data into the Table
INSERT INTO Students (name, age)
VALUES 
('John Doe', 20),
('Jane Smith', 22),
('Michael Johnson', 21);

-- 5. Select Data from the Table
SELECT * FROM Students;

-- 6. Update Data in the Table
UPDATE Students
SET age = 23
WHERE name = 'Jane Smith';

-- 7. Delete Data from the Table
DELETE FROM Students
WHERE name = 'Michael Johnson';

-- 8. Final Output of the Table
SELECT * FROM Students;