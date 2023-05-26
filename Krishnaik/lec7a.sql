use customer;
DROP TABLE student;

create table student(
studentid int auto_increment,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
primary key(studentid)
);

select * from student;

insert into student values(1, "Krish", "Naik",31),
(2, "Ram", 'Sharma', 31),
(3,'sam',"Joe",31)
;

DROP TABLE department;
-- Foreignkey(name) no need for it to be same as the column to be refferenced
create table department(
student_id int auto_increment,
department_name varchar(25) not null,
foreign key(studentid) references student(studentid)
);

insert into department values(1, "Mathematics"),
(2, "English"),
(3,'Maths')
;
desc department;

insert into department values(1, 'Computer science'),
(2,'Electronics'),
(3, 'Mechanical');

select * from department;
select * from student;

# now we will be saving it as a view so that if anyone requires 
# it then instead of giving him access to the whole data 
# you may just give him this query
# view is a virtual table that is reffering to the result set 
# that is basically refferring to the result set that gets 
# executed
/*
select first_name, last_name,age from student 
inner join department
using (studentid);
*/

create view student_info as
select first_name, last_name,age from student 
inner join department
using (studentid);

/*
Data Definition Language (DDL) Statements:
Views are based on SELECT statements and are used to simplify queries by providing a virtual table that combines data from multiple tables.
DDL statements like CREATE, ALTER, and DROP are not allowed in a view.

Non-Deterministic Functions:
Views are virtual tables and are created by executing a SELECT statement.
Non-deterministic functions, such as GETDATE() or RAND(), produce different results each time they are called, which can cause inconsistencies in the data.
Therefore, non-deterministic functions are not allowed in a view.

Temporary Tables or Table Variables:
Temporary tables or table variables are created within a session and are not accessible outside of that session.
Views are created at the database level and are meant to be accessed by multiple sessions.
Therefore, temporary tables or table variables cannot be used within a view.

ORDER BY Clause:
Views are virtual tables that do not store any physical data.
Therefore, the ORDER BY clause cannot be used in a view.

INSERT, UPDATE, and DELETE Statements:
Views are read-only and cannot be used to modify data in the underlying tables.
Therefore, INSERT, UPDATE, and DELETE statements cannot be used in a view.

OUTER JOIN with WHERE Clause:
Outer joins return all rows from one table and matching rows from the other table.
A WHERE clause is used to filter the results of a query.
When using an outer join with a WHERE clause, the WHERE clause may filter out all rows that do not have a match in the other table, effectively converting the outer join to an inner join.
Therefore, outer joins with WHERE clauses cannot be used in a view.
*/