create database joins;

use joins;

create table course(
course_id int primary key,
course_name varchar(255) unique,
course_fee decimal(10,2)
);

create table students(
student_id int primary key auto_increment,
student_name varchar(50)not null,
age int check ( age>18 ),
course_id int,
foreign key(course_id) references course(course_id) on delete cascade on update cascade
);

insert ignore into course (course_id , course_name , course_fee) values
(101,"webdev",1000),
(102,'dataengineering',2000),
(103,'machine learning',3000),
(104,'gen ai',4000),
(105,'agentic ai',5000);

insert  into students(student_name, age , course_id) values
('rahul',22,101),
('karthik',21,102),
('priya',24,101),
('arjun',22,104),
('sneha',25,105),
('divya',23,null);

select c.course_name,s.student_name from course as c inner join students as s on c.course_id = s.course_id;

select s.student_name , c.course_name ,c.course_fee from course as c left join students as s on c.course_id = s.course_id;

select s.student_name , c.course_name ,c.course_fee from students as s right join course as c on c.course_id=s.course_id;

select s.student_name , c.course_name ,c.course_fee from course as c right join students as s on c.course_id=s.course_id;