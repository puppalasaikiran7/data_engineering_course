#create database 
create database companydb;

#use database
use companydb;

#create table 
create table if not exists employees(
employee_id int primary key,
employee_first_name varchar(25),
last_name varchar(25),
email varchar(100),
hiredate date,
salary decimal(10,2)
);

#insert
insert ignore into employees (employee_id,employee_first_name,last_name , email,hiredate,salary)
values 
(1,'john','doe','johndoes@gmail.com','2020-06-01',60000.00),
(2,'jane','smith','janesmith@gmail.com','2023-05-01',40000.00),
(3,'alice','johnson','alice.johnson@gmail.com','2022-09-01',30000.00),
(4,'bob','brown','bob.brown@gmail.com','2024-12-01',80000.00);

select * from employees;

#null values inserting 
insert into employees values (5,'saikiran',null,'skrnpuppala@gmail.com',null,3000000.00);

select * from employees where last_name is null;

#update 
update employees set last_name = 'puppala' ,hiredate='2027-01-01' where employee_id=5;

#delete 
#remove the record from the table 
delete from employees where employee_id = 1;

select *from employees;

describe employees;



