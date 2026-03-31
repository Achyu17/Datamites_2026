Create database ADB;
use ADB;

show databases;

create table employees(
id INT PRIMARY KEY,
name varchar(50),
salary Decimal(10,2)
);

desc employees;

-- Insert Sample data
Insert Into employees (id,name,salary) VALUES
(1,'Virat',50000),
(2,'ABD',40000),
(3,'Siraj',30000);

desc employees;

# Select the details of table
Select * from employees;

#Assignemnt insert 5 different records to table Employee
#Duplicate id twice 
#4 different constraints columns 
#new column total salary virtual generated column salry + bonus


# add new empty column
alter table employees ADD Column bonus INT;

# Update the column
#Set default all rows 
set SQL_SAFE_UPDATES =0;

Update employees
Set bonus =5000;

#update bases on condition
Update employees
SET bonus =10000
where salary > 35000;


#update values using expression  10 perecent bonus 
update employees
SET bonus = salary * 0.1;


Select * from employees;
drop table employees;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    salary DECIMAL(10,2) NOT NULL CHECK (salary > 0),
    bonus INT DEFAULT 0 CHECK (bonus >= 0),/
    total_salary DECIMAL(10,2) AS (salary + CAST(bonus AS DECIMAL(10,2))) VIRTUAL
);
INSERT INTO employees(id, name, salary, bonus) VALUES
(1, 'Virat Kohli', 850000.00, 50000),
(2, 'Rohit Sharma', 920000.00, 60000),
(3, 'Jasprit Bumrah', 780000.00, 45000),
(4, 'KL Rahul', 650000.00, 30000),
(5, 'Ravindra Jadeja', 700000.00, 40000);

INSERT INTO employees(id, name, salary, bonus) VALUES
(1, 'Shubman Gill', 600000.00, 25000);


create table  students(
student_id INT primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50),
gender char(1) check(gender IN('M','F')),
age Int check(age between 15 and 30),
course varchar(50) not null,
marks decimal(5,2) check (marks between 0 and 100),
city varchar(50),
admission_date date default(CURRENT_DATE),
email varchar(100) unique,
phone varchar(15) unique,
scholarship Boolean Default False
);
INSERT INTO students 
(first_name, last_name, gender, age, course, marks, city, email, phone, scholarship)
VALUES
('Rahul', 'Verma', 'M', 20, 'BCA', 85.50, 'Mumbai', 'rahul.verma@example.com', '9876543210', TRUE),

('Priya', 'Sharma', 'F', 19, 'BBA', 78.25, 'Delhi', 'priya.sharma@example.com', '9876501234', FALSE),

('Amit', 'Patel', 'M', 22, 'BSc IT', 91.00, 'Ahmedabad', 'amit.patel@example.com', '9876512340', TRUE),

('Sneha', 'Rao', 'F', 18, 'BA', 67.80, 'Bangalore', 'sneha.rao@example.com', '9876523450', FALSE),

('Karan', 'Malhotra', 'M', 21, 'BCom', 72.40, 'Chennai', 'karan.malhotra@example.com', '9876534560', FALSE),

('Anjali', 'Nair', 'F', 23, 'BCA', 88.90, 'Kochi', 'anjali.nair@example.com', '9876545670', TRUE),

('Vikram', 'Singh', 'M', 24, 'BSc Physics', 59.75, 'Jaipur', 'vikram.singh@example.com', '9876556780', FALSE),

('Meera', 'Joshi', 'F', 20, 'BBA', 95.20, 'Pune', 'meera.joshi@example.com', '9876567890', TRUE);

Select * from students;
Select  student_id,first_name,last_name,age From students;
Select DISTINCT gender, scholarship
FROM students;

Select first_name as fn,
last_name as fn,
age as old From students;

Select * from students where city='Delhi';
Select * from students where city='Pune';
Select * from students where gender='M';

Select * from students where course <> 'Datascience';
Select * from students where course != 'Datascience';
Select * from students where marks > 80;
Select * from students where marks >=85;
Select * from students where age < 22;
Select * from students where age <=19;

Select * from students where course='DataScience' AND marks > 80;
Select * from students where course='DataScience' AND marks > 80 AND city='Delhi';
Select * from students where course='DataScience' or course='AI' or course='ML';

Select * from students where not city='Mumbai';
Select * from students where not course='DataScience'; 

Select * from students where city='Mumbai'or (city='Delhi' AND marks>70);