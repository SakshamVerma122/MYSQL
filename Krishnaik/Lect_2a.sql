USE customers;
SELECT * FROM customer_info;
SELECT * FROM customer_info;
DELETE FROM customer_info where salary is null;
describe customer_info;

-- Setting up value for auto increment
DROP TRIGGER my_trigger;
ALTER TABLE customer_info AUTO_INCREMENT = 1;

# INSERTING VALUES
# Insert first row in thr table containing the values for autoincrement part 
# as keeping it as a base only it will start incrementing it
Insert into customer_info(id,first_name,last_name,salary) 
values (1,"Saksham","Verma",1900000);
INSERT INTO customer_info(first_name,last_name,salary) 
values ("Shubham","Verma","2000000"),
("Prashanth","S",1900000);
INSERT INTO customer_info(first_name,last_name,salary) values
("Atishay","Jain",NULL);

# Selecting things
SELECT * FROM customer_info;
SELECT * FROM customer_info where id =4;

# Updating values
UPDATE customer_info set salary = 50000 where id = 4;

# alter add
alter table customer_info add email varchar(25);
alter table customer_info add email varchar(25),add dob date;

# altering datatypes
alter table customer_info modify dob year

# alter delete
ALTER TABLE customer_info DROP COLUMN email;

alter table customer_info add email varchar(25);
# DELETING VALUES ROW WISE
DELETE FROM customer_info where last_name is null;
DELETE FROM customer_info;
