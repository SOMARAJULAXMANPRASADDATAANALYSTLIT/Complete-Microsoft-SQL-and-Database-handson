/****** Script for SelectTopNRows command from SSMS  ******/

-- Averages
SELECT 
      s.[StudentId] [Student Id],
	  s.FirstName + ' ' + s.LastName [Student Name]
      ,AVG([Grade]) [Average Grade]
	  ,COUNT(GRADE) [Number of Classes]
  FROM [SchoolManagementDb].[dbo].[Enrollments] e
  INNER JOIN Students s on s.id = e.StudentId
  GROUP BY s.[StudentId], s.FirstName, s.LastName

-- Min and Max
SELECT 
      s.[StudentId] [Student Id],
	  s.FirstName + ' ' + s.LastName [Student Name]
      ,AVG([Grade]) [Average Grade]
	  ,MIN(Grade) [Lowest Grade]
	  ,MAX(Grade) [Higest Grade]
	  ,COUNT(GRADE) [Number of Classes]
  FROM [SchoolManagementDb].[dbo].[Enrollments] e
  INNER JOIN Students s on s.id = e.StudentId
  GROUP BY s.[StudentId], s.FirstName, s.LastName

SELECT Count(Id) [How many Students]
	  ,AVG([Grade]) [Average Class Grade]
	  ,MIN(Grade) [Lowest Class Grade]
	  ,MAX(Grade) [Higest Class Grade]
from [Enrollments]
WHERE ClassId = 1

-- SUM
select 
	s.[StudentId] [Student Id],
	s.FirstName + ' ' + s.LastName [Student Name]
	,AVG([Grade]) [Average Grade]
	,SUM(co.Credits) [Number of Credits]
from Enrollments e
inner join Classes cl on cl.Id = e.ClassId
inner join Courses co on co.Id = cl.CourseId
inner join Students s on s.Id = e.StudentId
GROUP BY s.[StudentId], s.FirstName, s.LastName


-- HAVING 
select 
	s.[StudentId] [Student Id],
	s.FirstName + ' ' + s.LastName [Student Name]
	,AVG([Grade]) [Average Grade]
	,SUM(co.Credits) [Number of Credits]
from Enrollments e
inner join Classes cl on cl.Id = e.ClassId
inner join Courses co on co.Id = cl.CourseId
inner join Students s on s.Id = e.StudentId
GROUP BY s.[StudentId], s.FirstName, s.LastName