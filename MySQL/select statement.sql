create database microsoft_db;

use microsoft_db;

create table employees(
emp_id int primary key,
name varchar(45),
age int,
salary decimal(10,2),
department varchar(100),
city varchar (100)
);

insert ignore into employees(emp_id,name,age,salary,department,city)
values
(1,'ravi',25,30000,'IT','hyderabad'),
(2,'priya',28,45000,'HR','chennai'),
(3,'arjun',32,60000,'Finance','hyderabad'),
(4,'sneha',24,25000,'IT','mumbai'),
(5,'akshit',30,50000,'HR','hyderabad');


#reterive every column and row
select * from employees;

#reterive specific column
select name ,salary from employees;

#reterive distinct values from the column
select distinct department from employees;

#limit ( reterive a limited rows from the table )
select * from employees limit 3;




