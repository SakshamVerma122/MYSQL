/* 
Inner Join
Left Join
Right Join
Full Join
Natural Join
Cross Join
*/

use cutomers;

select * from student;
insert into student values(4,'Ankit',"Joe",31),(5,"Ramesh","Raja",25);
select * from department;
select * from student;

# Inner join --> Here we are getting all the columns of both the tables but we want only some selected columns
select * from student inner join department 
where student.studentid = department.studentid;

# Where to use on vs department
/*The ON keyword is used with the JOIN clause to specify the join condition. 
It is used to specify how the two tables being joined should be related to each other.
The ON keyword is followed by a boolean expression that evaluates to true or false, 
depending on whether the join condition is satisfied. The ON clause is used to filter 
the rows of the tables before they are joined together*/
# Here we only need to mention the ambigous column names => in our case it's studentid
select student.studentid, first_name,last_name,age,department_name 
from student inner join department
where student.studentid = department.studentid;

# Left join(It's mainly performed from the side with common foreign key to the side with some extra keys)
select student.studentid, first_name,last_name,age,department_name 
from student left join department
on student.studentid = department.studentid;

# FULL OUTER JOIN
select student.first_name, student. last_name, student. age, department.department_name
from student left join department
on student. studentid=department.studentid

union

select student.first_name, student. last_name, student .age, department.department_name
from student right join department
on student.studentid = department.studentid;

# Full Outer join way 2 --> This is not working
-- SELECT student.first_name, student. last_name, student .age, department.department_name
-- FROM student
-- FULL OUTER JOIN department
-- ON student.studentid = department.studentid;

# Cross join --> No need of on condition
select student.first_name, student. last_name, student .age, department.department_name
from student cross join department;

# natural join --> No need of on condition
select student.first_name, student. last_name, student .age, department.department_name
from student natural join department;