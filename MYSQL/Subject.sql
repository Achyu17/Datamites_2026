create database Subject;
use Subject;

-- CREATE A PARENT TABLE 
-- I.E COURSES TABLE

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    instructor VARCHAR(50)
);


describe courses ;



CREATE TABLE students1 (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);


describe students1;


-- INSERT INTO THE COURSES TABLE 
INSERT INTO courses (course_id, course_name, instructor)
VALUES
(1, 'Data Science', 'Dr. Mehta'),
(2, 'AI & ML', 'Prof. Sharma'),
(3, 'Cyber Security', 'Dr. Iyer'),
(4, 'Computer Science', 'Dr. Rao');


SELECT * FROM courses ;


INSERT INTO students1 (student_id, first_name, last_name, age, city, course_id)
VALUES
(101, 'Rahul', 'Mehta', 22, 'Mumbai', 1),
(102, 'Priya', 'Sharma', 19, 'Delhi', 4),
(103, 'Aman', 'Kumar', 24, 'Pune', 2),
(104, 'Sneha', 'Iyer', 23, 'Chennai', 1),
(105, 'Vikram', 'Patel', 20, 'Ahmedabad', 3),
(106, 'Nisha', 'Singh', 18, 'Delhi', NULL),
(107, 'Arjun', 'Rao', 27, 'Bangalore', 2),
(108, 'Pooja', 'Nair', 21, 'Mumbai', 1);


SELECT * FROM students1;



-- INNER JOIN 
-- Get all students with course info (only students assigned to courses)
-- Returns only students who have a matching course
SELECT s.student_id, s.first_name,s.last_name, 
c.course_name, c.instructor,c.course_id
FROM students1 s 
INNER JOIN courses c
ON s.course_id = c.course_id;


-- LEFT JOIN 
-- Get all students, including those without a course
-- Returns all students, NULL for course_name if no match.
SELECT s.student_id, s.first_name, s.last_name, c.course_name,c.course_id
FROM students1 s
LEFT JOIN courses c
ON s.course_id = c.course_id;


 -- RIGHT JOIN 
 -- Get all courses, including courses with no students
 -- Returns all courses, NULL for student columns if no students enrolled.
 SELECT s.student_id, s.first_name, c.course_name,c.course_id
FROM students1 s
RIGHT JOIN courses c
ON s.course_id = c.course_id;

-- OUTER JOIN
-- Get all students and all courses, matching when possible
SELECT s.student_id, s.first_name, c.course_name,c.course_id
FROM students1 s
LEFT OUTER JOIN courses c
ON s.course_id = c.course_id;


-- JOIN WITH WHERE CLAUSE
-- Students in courses taught by Dr. Mehta
SELECT s.first_name, s.city, c.course_name,c.instructor,c.course_id
FROM students1 s
INNER JOIN courses c
ON s.course_id = c.course_id
WHERE c.instructor = 'Dr. Mehta';

-- AGGERATION WITH THE JOINS 
-- Count students per course
SELECT c.course_name, COUNT(s.student_id) AS total_students
FROM courses c
LEFT JOIN students1 s
ON c.course_id = s.course_id
GROUP BY c.course_name;

#self join 
# to find the classmates who are taking the same course 
select  
s1.first_name as stud1,
s2.first_name as stud2,
s1.course_id
from students1 s1 
join students1 s2
on s1.course_id  = s2.course_id
and s1.student_id <> s2.student_id;


-- order of execution of sql 
 FROM
 ON 
 JOIN
 WHERE
 GROUP BY 
 HAVING
 SELECT 
 DISTINCT 
 ORDER BY 
 LIMIT /OFFSET 