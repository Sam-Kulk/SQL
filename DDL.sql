-- DDL(Data Defination Language)
	-- The are five important commands in it i.e. CREATE, ALTER, DROP, TRUNCATE & RENAME

-- CREATE
	-- Basically used to create a new object i.e. database, table etc..
create database mydb;
create table student(student_id int,student_name varchar(15),student_class char(1));


-- ALTER
	-- Basically used to alter the defination of the table

-- New column addition
alter table student add column student_nic varchar(15);

-- Column redefination
alter table student modify column student_nic int; 
	-- I can change datatype & also the limit for ex varchar(10) to (20)
    -- If the modification is affecting the existing data, then after I need to clear the data & then modify

-- Column rename
alter table student rename column student_nick to student_n;
	
-- Column deletion
alter table student drop column student_nic;

-- DROP 
	-- This command is used to delete the database & tables
drop table student_name;
drop database mydb;


-- TRUNCATE
	-- This command is used to permanently remove all the records from the table i.e it is used to clear table.
    -- I cannot rollback even though i have set autocommit=0
    -- I cannot use conditions to delete the specific records
truncate table student;


-- RENAME
	-- This command is basically used to rename the table
rename table student to students;

	-- Note: In MySQL, there is no direct command to rename a database, but there is one indirect way.

