# creating the database 
create database if not exists libraryDb;

# showing the databases created
show databases;

#using the particular database
use libraryDb;

# showing the tables in the data base
show tables;

# create tables 
create table if not exists books(
bookid int primary key,
title varchar(255),
author varchar(50),
genre varchar(50),
publication_year int
);

#dropping the table 
-- drop table books;

#dropping the database 
-- drop database librarydb;

# inserting the values in the table 
insert ignore into books (bookid,title,author,genre,publication_year) 
values 
(1,'ai engineering','saikiran','tech',2026),
(2,'ml engineering','saikiran puppala','tech',2026);


# selecting the values 
select * from books;


#rename 
rename table books to digital_books;

#alter 
#add 
alter table digital_books add book_price int;

#drop / delete 
alter table digital_books drop column book_price;

#creating the table just for truncating 
create table if not exists testing_table(
id int primary key,
name varchar(255),
age int,
birth_year year
);

insert ignore into testing_table(id,name,age,birth_year) values(1,'saikiran',23,2003);

select * from testing_table;

#truncate 
truncate table testing_table;



