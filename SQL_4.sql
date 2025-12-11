CREATE DATABASE student_db;

USE student_db;

CREATE TABLE students (
    enrollment_no INT PRIMARY KEY,
    name VARCHAR(50),
    contact_no VARCHAR(15),
    course VARCHAR(50)
);

INSERT INTO students (enrollment_no, name,contact_no, course) VALUES
('101', 'Amit Sharma', '9876543210', 'BSc IT'),
('102', 'Sneha Patel', '9988776655', 'BCA'),
('103', 'Rohit Verma', '9123456780', 'BSc CS'),
('104', 'Priya Singh', '9877012345', 'B.Tech'),
('105', 'Kunal Mehta', '9090909090', 'BSc IT');

SELECT* FROM students;

DROP TABLE students;

CREATE TABLE students (
    enrollment_no INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    age INT
);

INSERT INTO students (enrollment_no, name, course, age) VALUES
('101', 'Amit Sharma', 'BSc IT',19),
('102', 'Sneha Patel', 'BCA',20),
('103', 'Rohit Verma','BSc CS', 18),
('104', 'Priya Singh', 'B.Tech', 19),
('105', 'Kunal Mehta', 'BSc IT',20);

INSERT INTO students (enrollment_no, name, course, age) VALUES
(106, 'Rajiv Sharma', 'BSc IT', 20),
(107, 'Riya Malhotra', 'BBA', 21),
(108, 'Rohan Verma', 'BSc CS', 19),
(109, 'Sahira Patel', 'BCA', 22),
(110, 'Kabir Khanna', 'B.Com', 23);

SELECT * FROM students;

SELECT * FROM students
WHERE age > 20;

SELECT * FROM students
WHERE course = 'Data Science';

SELECT * FROM students
WHERE name LIKE 'A%';

SELECT * FROM students
WHERE age BETWEEN 18 AND 25;

SELECT * FROM students
WHERE name = 'Rajiv Sharma';

USE student_db;

SELECT * FROM students
ORDER BY name ASC;

SELECT * FROM students
ORDER BY age ASC;

SELECT * FROM students
ORDER BY age ASC
LIMIT 3;

UPDATE students
SET age = 21
WHERE enrollment_no = '103';

UPDATE students
SET course = 'Data Science'
WHERE enrollment_no = '107';

DELETE FROM students
WHERE enrollment_no = '110';

SELECT * FROM students;

USE student_db;

SELECT COUNT(*) FROM students;

SELECT course, Count(*) FROM students GROUP BY course;

SELECT * FROM students ORDER BY age DESC LIMIT 1;

SELECT * FROM students ORDER BY age ASC LIMIT 1;

SELECT * FROM students WHERE name LIKE '%E%';