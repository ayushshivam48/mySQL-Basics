-- 1. Create the Students Table with a Primary Key
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    major VARCHAR(50)
);

-- 2. Create the Courses Table with a Primary Key
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    credits INT
);

-- 3. Create the Enrollments Table with Foreign Keys
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Alter the Students Table - Add a New Column
ALTER TABLE Students
ADD COLUMN email VARCHAR(100);

-- Alter the Students Table - Modify the 'age' Column
ALTER TABLE Students
MODIFY COLUMN age INT NOT NULL;

-- Insert sample data into Students Table for demonstration
INSERT INTO Students (name, age, major, email)
VALUES
('Alice', 20, 'Computer Science', 'alice@example.com'),
('Bob', 21, 'Mathematics', 'bob@example.com'),
('Charlie', 22, 'Physics', 'charlie@example.com');

-- Insert sample data into Courses Table for demonstration
INSERT INTO Courses (course_name, credits)
VALUES
('Database Systems', 4),
('Algorithms', 3),
('Linear Algebra', 3);

-- Insert sample data into Enrollments Table for demonstration
INSERT INTO Enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2024-09-01'),
(2, 2, '2024-09-02'),
(3, 3, '2024-09-03');

-- Display the Students Table
SELECT * FROM Students;

-- Display the Courses Table
SELECT * FROM Courses;

-- Display the Enrollments Table
SELECT * FROM Enrollments;

-- Final state before dropping the tables

-- Drop the Enrollments Table
DROP TABLE Enrollments;

-- Drop the Courses Table
DROP TABLE Courses;

-- Drop the Students Table
DROP TABLE Students;