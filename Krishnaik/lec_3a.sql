/*SQL Constraints-SQL Constraints ‘
SQL constraints are used to specify any rules for the records
in a table. Constraints can be used to limit the type of data 
that can go into a table.It ensures the accuracy and 
reliability of the records in the table, and if there is any 
violation between the constraint and the record action,
the action is aborted. Constraints can be column level or 
table level. Column level constraints apply to a column, and 
table-level constraints apply to the whole table.

* Not Null
* Unique
* Primary Key
* Foreign Key
* Check
* Default
* Index
*/

use customers;
create table student(
id  int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int
);
describe student;

alter table student modify age int not null;

create table personl(
id int not null ,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
unique(id)
);

# Adding unique seperately
ALter table person
ADD unique(first_name);

# Alter via adding new constraint which is combination of the 2 th
# thing i.e. the last_name and first_name both combined should be 
# unique in each row
Alter table person ADD unique(first_name,last_name);

-- TAKE CONSTARINT NAME FROM HERE
describe person;

SHOW CREATE TABLE person;

# Dropping a constarint
Alter table person drop index first_name_2;

SHOW CREATE TABLE person;

# Know your Constraints
SELECT * 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE TABLE_SCHEMA = 'person' 
AND TABLE_NAME = 'customers';

create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25),
age int,
constraint pk_person primary key(id,last_name));
