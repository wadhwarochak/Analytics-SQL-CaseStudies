-- Connect to Database (Mysql)
USE maven_advanced_sql;

-- 1. View the students table
SELECT * FROM students;

-- The Big 6 Clauses
SELECT grade_level, AVG(gpa) as avg_gpa FROM students
WHERE school_lunch = 'Yes'
GROUP BY grade_level
HAVING avg_gpa < 3.3
ORDER BY grade_level;

-- 3. Common Keywords

-- DISTINCT
SELECT DISTINCT grade_level
FROM students;

-- COUNT
SELECT COUNT(DISTINCT grade_level)
FROM students;

-- MAX and MIN
SELECT MAX(gpa)- MIN(gpa) as gpa_range
FROM students;

-- AND
SELECT * FROM students
WHERE grade_level < 12 AND school_lunch = 'Yes';

-- IN
SELECT * FROM students
WHERE grade_level IN (9,10,11) AND school_lunch = 'Yes';

-- IS NULL
SELECT * FROM students
WHERE email IS NULL;

SELECT * FROM students
WHERE email IS NOT NULL;

SELECT * FROM students
WHERE email LIKE '%.edu';

-- ORDER BY
SELECT * FROM students ORDER BY gpa DESC;

-- LIMIT
SELECT * FROM students ORDER BY gpa DESC LIMIT 5;

-- CASE Statements
SELECT student_name, grade_level,
	CASE
		WHEN grade_level = 9 THEN 'Freshman'
		WHEN grade_level = 10 	THEN 'Sophomore'
        WHEN grade_level = 11 THEN 'Junior'
        ELSE 'Senior'
	END AS student_class
FROM students;