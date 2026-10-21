use companydb;

call get_employees_info;

#IN parameter 
call get_employees_info(3);

#OUT parameter
call employee_info(@total);
select @total;

#in the out parameter we can use 
#1) count(col) 
#2) sum(col)
#3) avg(col)
#4) max(col) 
#5) min(col) 
#6) set parameter = something(maths)

#showing all the procedures 
SHOW PROCEDURE STATUS;

#dropping the existing procedures
drop procedure  employee_info;
