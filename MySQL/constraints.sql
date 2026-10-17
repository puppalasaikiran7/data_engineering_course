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

