use customers;
describe personl;

/*
recommended approach to creating a primary key using 
multiple columns in MySQL is to use a constraint with 
a specific name, such as pk_person, instead of simply 
using PRIMARY KEY (column1, column2). This is because 
giving the constraint a name makes it easier to manage 
and reference in the future, especially when dealing 
with larger databases with many tables and constraints.
*/
CREATE TABLE my_table (
  column1 INT NOT NULL,
  column2 INT NOT NULL,
  column3 VARCHAR(50) NOT NULL,
  PRIMARY KEY (column1, column2)
);
Drop table person;

/*****************************/
create table person(
id int Not Null,
first_name varchar(25) Not null,
last_name varchar(25) Not Null,
age int,
salary int,
primary key(id)
);

desc person;

# Creating a foreign key
CREATE TABLE department(
  id int not null,
  department_id int not null,
  department_name varchar(25) not null,
  primary key(department_id),
  constraint fk_persondepartment foreign key(id) 
  references person(id)
);

desc department;

DROP TABLE department;
/*****************************/

# Adding foreign key seperately to the table
alter table department
add foreign key(id) references person(id);

/****CREATING A CONSTRAINT FOR A PARTICULAR COLUMN OF A TABLE****/
drop table person;
# check constraints
create table person(
id int Not null,
first_name varchar(25) Not null,
Last_name varchar(25) Not Null,
age int,
salary int,
primary key(id),
check (salary<50000));

  

insert into person values(1, "Krish", ‘Naik’ ,31,40000);

/*****************/
create table person(
id int Not Null,
First_name varchar(25) Not null,
Last_name varchar(25) Not Null,
city_name varchar(25) default 'Bengelore'
);

