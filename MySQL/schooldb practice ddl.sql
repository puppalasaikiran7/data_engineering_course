create database if not exists schooldb;

show databases;

use schooldb;

create table if not exists courses(
course_id int primary key,
course_name varchar(255),
department varchar(255),
credits int
);

create table if not exists student(
student_id int primary key,
student_name varchar(255),
email_id varchar(255),
enrollementdate date
);


insert ignore into student(student_id , student_name , email_id , enrollementdate) 
values
(1,'saikiran','skrnpuppala@gmail.com','2026-01-15'),
(2,'saikiran puppala','saik3203@gmail.com','2026-03-05');

select * from student;

insert ignore into courses
values 
(1,'data analytics','analytics',100),
(2,'data engineering','engineering',100);

select * from courses;

-- drop table student;
-- drop table courses;

-- drop database schooldb;