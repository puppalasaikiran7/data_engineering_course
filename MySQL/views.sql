show databases;

use companydb;

show tables;

select * from employees;

describe employees;

create view employee_public_details as 
select employee_id , employee_first_name , last_name , email
from employees;

select * from employee_public_details;