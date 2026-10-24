🎓 Student Database Management System (SQL)

📌 Project Overview

The Student Database Management System is a SQL-based project developed using MySQL. It stores student details and subject marks and helps analyze student performance using SQL queries.

🎯 Objectives

- Store and manage student information.
- Maintain subject-wise marks.
- Calculate total and average marks.
- Assign grades based on average marks.
- Identify the highest marks in each subject.
- Rank students based on their marks.

🛠️ Technologies Used

- Database: MySQL
- Tool: MySQL Workbench
- Language: SQL

🗂️ Database Structure

1. Students Table

Stores student information.

Column| Description
student_id| Unique ID for each student
student_name| Name of the student
age| Age of the student
gender| Gender of the student
city| City of the student

2. Marks Table

Stores students' subject marks.

Column| Description
mark_id| Unique ID for each mark record
student_id| ID linking marks to a student
subject| Subject name
marks| Marks obtained

💡 SQL Concepts Used

- CREATE DATABASE and CREATE TABLE
- INSERT INTO
- SELECT and WHERE
- ORDER BY
- JOIN
- GROUP BY and HAVING
- Aggregate functions: SUM(), AVG(), MAX(), COUNT()
- CASE statements for grade calculation
- Subqueries
- Window functions using RANK()

📊 Key Features

1. View student details and marks.
2. Display student names with subject-wise marks.
3. Calculate total and average marks for each student.
4. Assign grades based on average marks.
5. Find the highest marks in each subject.
6. Count scores of 80 or above by subject.
7. Rank students within each subject.

▶️ How to Run the Project

1. Install MySQL Server and MySQL Workbench.
2. Open MySQL Workbench and connect to your MySQL server.
3. Open the "Student_Database_Management.sql" file.
4. Execute the SQL statements in order.
5. View the results in the output grid.

Note: If you have already inserted the sample records, do not run the "INSERT" statements again, as duplicate primary-key errors may occur.

📚 What I Learned

Through this project, I practiced creating relational tables, connecting tables with primary and foreign keys, writing JOIN queries, analyzing data with aggregate functions, assigning grades using CASE statements, and ranking records using window functions.

👩‍💻 Author

Gayathri

Entry-Level SQL / Python Developer Aspirant
