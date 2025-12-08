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