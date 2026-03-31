use employee1_db;

# Creating the table
create table emp_details(
name varchar(25),
age int,
gender char(1),
doj date,
city varchar(50),
salary float
);

Describe emp_details;
 
create table emp_details2(
emp_id varchar(20) not null,
first_name varchar(20),
last_name varchar(20),
gender varchar(5),
role varchar(50),
manager_id varchar(100),
exp int not null check (exp > 10)
);

desc emp_details2;

# Show
Show tables;

# Alternate the table
# Adding a column
# Renaming a column
#Modifying column
# Dropping column

# Adding a single as well as multiple table 
alter table employee1_db.emp_details2
add branch varchar(50);

desc emp_details2;

alter table employee1_db.emp_details2
add dept_id varchar(10),
add state varchar(20);
 
 # modifying  the single column
 alter table emp_details2
 modify gender varchar(1) not null;
 
alter table emp_details2
modify first_name varchar(30),
modify last_name varchar(15);

# Renaming a column
alter table emp_details2
change column role job varchar(30);

# Drop the column
alter table emp_details2
drop column manager_id;

#Rename the table 
alter table emp_details2
rename to emp_records;


#Generated columns in data
alter table emp_records
add full_name varchar(100)
generated always as (concat(first_name,last_name));


desc emp_records;
# Truncate the table 
Truncate table emp_records;

#Drop table
Drop table emp_records;
