Create database Employee_DB;
use Employee_DB;

Create table Employees(
id INT Primary key auto_increment,
name varchar(100),
designation varchar(100),
salary Decimal (10,2)
);

Insert Into Employees (name,designation,salary) values
('Virat','CEO',750000.00),
('ABD','CTO',650000.00),
('Siraj','Sr Product Manager',550000.00),
('Yuzi','Software Engineer',450000.00);

INSERT INTO Employees (name, designation, salary) VALUES
('Robert Downey Jr.', 'Actor', 25000000.00),
('Scarlett Johansson', 'Actress', 20000000.00),
('Leonardo DiCaprio', 'Actor', 30000000.00),
('Dwayne Johnson', 'Actor', 22000000.00),
('Tom Cruise', 'Actor', 35000000.00),
('Chris Hemsworth', 'Actor', 15000000.00),
('Jennifer Lawrence', 'Actress', 18000000.00),
('Emma Stone', 'Actress', 14000000.00),
('Brad Pitt', 'Actor', 25000000.00),
('Angelina Jolie', 'Actress', 20000000.00);


Select * from Employees;