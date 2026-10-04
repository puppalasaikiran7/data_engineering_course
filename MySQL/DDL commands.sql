# creating the table 
create database if not exists libraryDb;

# showing the databases created
show databases;

#using the particular database
use libraryDb;

# showing the tables in the data base
show tables;

# create tables 
create table books(
bookid int,
title varchar(255),
author varchar(50),
genre varchar(50),
publication_year int
);


