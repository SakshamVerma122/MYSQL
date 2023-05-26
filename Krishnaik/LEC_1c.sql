# Creating a database
create database PracKrish;
show databases;

# Dropping the database
drop database PracKrish;
show databases;


# Ceating  a database
CREATE DATABASE customers;

# USE THE ABOVE DATABASE AS TO CREATE DATABASE THERE AND NOT THE INE WE ARE USING CURRENTLY
USE customers;

# creating a table
CREATE TABLE customer_info(id integer , first_name varchar(10), last_name 
varchar(10));

show tables;

# inserting values
insert into customer_info(id,first_name,last_name) values (1,"Saksham","Verma");
insert into customer_info(id,first_name,last_name) values (2,"Deepak","Verma");

SELECT * from customer_info;