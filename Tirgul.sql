-- Create a new table called STUDENTS with columns and constraints:
-- ID INT PRIMARY KEY, NAME TEXT NOT NULL, AGE, CITY, GRADE REAL NOT NULL.

CREATE TABLE STUDENTS(
	ID INT PRIMARY KEY NOT NULL,
	NAME TEXT NOT NULL,
	AGE INT,
	CITY CHAR,
	GRADE REAL NOT NULL
);

-- Create exactly 4 students that appear in the table below

INSERT INTO STUDENTS (ID, NAME, AGE, CITY, GRADE)
VALUES (1, 'Noa', 15, 'Tel Aviv', 92.5),
(2, 'Liam', 16, 'Haifa', 88),
(3, 'Maya', 15, 'Netanya', 95),
(4, 'Omer', 17, 'Jerusalem', 81.5);

-- Question 3 - write these SELECT queries:
-- 1) select query to display all students and all columns

SELECT *
FROM STUDENTS

-- 2) select query to show all students only name and grade
  
SELECT NAME, GRADE
FROM STUDENTS

-- 3) select query to show all students who got grade above 90
  
SELECT NAME
FROM STUDENTS
WHERE GRADE > 90

-- 4) select all students where their name starts with M
  
SELECT *
FROM STUDENTS
WHERE NAME LIKE 'M%'

-- 5) show the avg grade, max, min
  
SELECT AVG(GRADE) AS AVG_GRADE
FROM STUDENTS;

SELECT MAX(GRADE) AS MAX_GRADE
FROM STUDENTS;

SELECT MIN(GRADE) AS MIN_GRADE
FROM STUDENTS;

-- 6) show all students who got above avg

SELECT *
FROM STUDENTS
WHERE GRADE > (
	SELECT AVG(GRADE) FROM STUDENTS
);

-- Change Liam grade to 90

UPDATE STUDENTS
SET GRADE=90
WHERE NAME='Liam'

-- Delete all students where city starts with "N"
  
DELETE FROM STUDENTS
WHERE CITY LIKE 'N%'

-- Delete all students with grade 88
DELETE FROM STUDENTS
WHERE GRADE=88

-- Finally drop the table
DROP TABLE STUDENTS;
