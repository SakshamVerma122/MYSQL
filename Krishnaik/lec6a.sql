/*
My SQL Indexes
CREATE INDEX statement in SQL is used to create indexes in tables.
The indexes are used to retrieve data from the database more quickly than others.
The user can not see the indexes, and they are just used to speed up queries /searches.
Note: Updating the table with indexes takes a lot of time than updating a table without indexes
It is because the indexes also need an update.
So, only create indexes on those columns that will be frequently searched against.
*/

use customers;
show tables;

select * from person;
DROP TABLE person;

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25),
city_name varchar(25),
primary key(id)
);

-- create index index_city_name;
create index index_city_name
on person(city_name);

desc person;

create index index_city_first_name
on person(first_name,city_name);

# See index for a particular table
SHOW INDEX FROM person;

# Dropping Index
alter table student
drop index index_age;

# Getting column name for a particular table
SHOW COLUMNS FROM student;
