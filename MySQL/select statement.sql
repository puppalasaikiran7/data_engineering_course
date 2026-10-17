create database if not exists microsoft_select__db;

use microsoft_select__db;

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

#order by 
#ascending order
select * from employees order by age asc;

#descending order 
select * from employees order by salary desc;

# like  ( pattern matching ) 
select * from employees where name like 's%';

# comparision operators 
# equal to 
select * from employees where department='IT';

# not equal to 
select * from employees where department!= 'HR';

# greater than 
select * from employees where salary >30000;

# lesser than 
select * from employees where salary <30000;

# greater than equal to
select * from employees where age>=30;

# lesser than equal to 
select * from employees where salary<=40000;

# Logical operator 
# and operator 
select * from employees where department ='IT' and salary =30000;

# or operator 
select * from employees where department ='IT' or department = 'HR';

# not operator 
select * from employees where not department='IT';

# range operators 
# between 
select * from employees where salary between 30000 and 40000;

# in 
select * from employees where department in ('IT','HR');

# null checking 
# is null
select * from employees where city is null;

# is not null
select * from employees where city is not null;




# aggregate function 
# sum
select sum(salary) from employees;

# average 
select avg(salary) from employees;

# min 
select min(salary) from employees;

# max 
select max(salary) from employees;

# count 
select count(*) from employees;

# group by 
# this is used to find the aggregate function values in the groups 
select department , sum(salary) from employees  group by department;

# Having 
select department , max(salary) from employees group by department having max(salary)>35000;



