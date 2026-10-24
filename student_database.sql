-- STUDENT DATABASE MANAGEMENT SYSTEM
-- Database: MySQL

CREATE DATABASE IF NOT EXISTS StudentDB;
USE StudentDB;

-- 1. Create Students Table
CREATE TABLE IF NOT EXISTS Students (
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
age INT,
gender VARCHAR(10),
city VARCHAR(50)
);

-- 2. Insert Student Records (run only if table is empty)
INSERT INTO Students VALUES
(1,'Rahul',21,'Male','Bengaluru'),
(2,'Priya',22,'Female','Chennai'),
(3,'Arun',20,'Male','Hyderabad'),
(4,'Sneha',21,'Female','Bengaluru'),
(5,'Kiran',23,'Male','Chennai'),
(6,'Divya',20,'Female','Hyderabad'),
(7,'Ravi',22,'Male','Bengaluru'),
(8,'Anjali',21,'Female','Chennai');

-- 3. Create Marks Table
CREATE TABLE IF NOT EXISTS Marks (
mark_id INT PRIMARY KEY,
student_id INT,
subject VARCHAR(50),
marks INT,
FOREIGN KEY (student_id)
REFERENCES Students(student_id)
);

-- 4. Insert Marks (run only if table is empty)
INSERT INTO Marks VALUES
(1,1,'Python',85),(2,1,'SQL',90),
(3,2,'Python',92),(4,2,'SQL',88),
(5,3,'Python',75),(6,3,'SQL',80),
(7,4,'Python',95),(8,4,'SQL',93),
(9,5,'Python',68),(10,5,'SQL',72),
(11,6,'Python',89),(12,6,'SQL',91),
(13,7,'Python',78),(14,7,'SQL',82),
(15,8,'Python',96),(16,8,'SQL',94);

-- 5. Display All Students and Marks
SELECT * FROM Students;
SELECT * FROM Marks;

-- 6. Display Student Names and Subject Marks
SELECT s.student_name, m.subject, m.marks
FROM Students s
JOIN Marks m ON s.student_id = m.student_id;

-- 7. Calculate Total and Average Marks with Grades
SELECT
s.student_id,
s.student_name,
SUM(m.marks) AS total_marks,
ROUND(AVG(m.marks), 2) AS average_marks,
CASE
WHEN AVG(m.marks) >= 90 THEN 'A'
WHEN AVG(m.marks) >= 80 THEN 'B'
WHEN AVG(m.marks) >= 70 THEN 'C'
ELSE 'D'
END AS grade
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
GROUP BY s.student_id, s.student_name
ORDER BY average_marks DESC;

-- 8. Find Highest Marks in Each Subject
SELECT subject, MAX(marks) AS highest_marks
FROM Marks
GROUP BY subject;

-- 9. Count Scores of 80 or Above by Subject
SELECT subject, COUNT(*) AS students_scoring_80_or_above
FROM Marks
WHERE marks >= 80
GROUP BY subject;

-- 10. Rank Students Within Each Subject
SELECT
s.student_name,
m.subject,
m.marks,
RANK() OVER (
PARTITION BY m.subject
ORDER BY m.marks DESC
) AS student_rank
FROM Students s
JOIN Marks m ON s.student_id = m.student_id;