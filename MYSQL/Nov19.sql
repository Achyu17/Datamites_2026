-- DATABASE MANIPULATION COMMANDS
-- IT is used to comment
-- SQL is not a case sensitive

-- Creating Database

Create database employee1_db;
use employee1_db;

create database if not exists EMPLOYEE_DB_2;

-- list the avaiable databases
Show Databases;

-- Verify database
Select Database();

-- Drop  database in mysql(Dropping)
Drop database EMPLOYEE_DB_2;
Drop database IF exists EMPLOYEE_DB_2;

Show Databases;





