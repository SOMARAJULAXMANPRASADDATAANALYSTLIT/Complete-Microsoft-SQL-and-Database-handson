USE [SchoolManagementDb1]

-- Basic SELECT Query
SELECT * FROM Lecturers;
SELECT FirstName, LastName, StaffId FROM Lecturers;
SELECT * FROM Courses;

-- Query with filters
SELECT * FROM Lecturers WHERE Id = 6
 -- Adding multiple conditions
SELECT * FROM Lecturers 
	WHERE FirstName = 'Tajay' OR LastName = 'Tajay'

SELECT * FROM Lecturers 
	WHERE FirstName = 'Reid' AND LastName = 'Tajay'

-- Using wildcard to specify what string must start with
SELECT * FROM Lecturers WHERE FirstName LIKE 'W%'

-- Using wildcard to specify what string must end with
SELECT * FROM Lecturers WHERE FirstName LIKE '%r'

-- Using wildcard to specify what string must contain
SELECT * FROM Lecturers WHERE FirstName LIKE '%t%'

-- Using comparisons
SELECT * FROM Courses WHERE Credits < 3;
SELECT * FROM Courses WHERE Credits > 3;
SELECT * FROM Courses WHERE Credits >= 3;
SELECT * FROM Courses WHERE Credits <= 3;