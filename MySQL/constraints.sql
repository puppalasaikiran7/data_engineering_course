create database if not exists amazon_constraints_db;

use amazon_constraints_db;

create table user(
user_id int auto_increment primary key,
user_name varchar(100) not null,
mobile_number varchar(20) not null unique ,
address varchar(255) 
);

create table orders(
order_id int auto_increment primary key,
user_id int not null,
order_date timestamp default current_timestamp,
total_amount decimal(10,2) check (total_amount >0),
order_status varchar(50) default 'pending',
tracking_code varchar(100) unique,
foreign key(user_id) references user(user_id) on delete cascade on update cascade
);

create database constraints;

use constraints;

create table students(
student_id int auto_increment primary key,
student_name varchar(50) not null
);

create table course(
course_id int auto_increment primary key, 
course_name varchar(255) 
);

create table enrollments(
student_id int ,
course_id int ,
enrollement_date date,
primary key(student_id , course_id),
foreign key (student_id) references students(student_id) on delete cascade on update cascade,
foreign key (course_id) references course(course_id) on delete cascade on update cascade
);


insert into students(student_name) values
('saikiran'), 
('vishnu vardhan'), 
('akshit'), 
('prateet'), 
('paul');

insert into course (course_name ) values("aiml"),("webdev"),("dsa"),("mlops"),("projectmanagement");

select * from students;
select * from course;

insert into enrollments (student_id , course_id  , enrollement_date) values(1,1,'2026-07-01'),(1,3,"2024-08-20");

insert into enrollments (student_id , course_id  , enrollement_date) values(2,2,"2026-10-10");

select * from enrollments;

select s.student_name , c.course_name ,e.enrollement_date from enrollments as e inner join students as s  on e.student_id = s.student_id inner join  course as c on e.student_id = c.course_id;


#indexing 
create index idex_student_name on students(student_name);

show index from students;