-- Constraints are basically the conditions/rules that are applied on the columns, so as to restrict the data entering into that columns
-- Commonly used SQL constraints are NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK & DEFAULT
-- All the constraints are applied while creating a table i.e. it comes under DDL
-- I can use SHOW CREATE TABLE <TABLE_NAME>; , to get to know the constraints applied on the table columns

-- 1. NOT NULL
-- ------------------------
-- It prevents the entry of 'NULL' into the column on which it is applied.
use world;
desc city;
insert into city values(1111111,NULL,'IND','BJP',500000);

-- 2. UNIQUE
-- ------------------
-- It prevents the entry of the duplicates values into the column on which it is applied.
-- Throws 'Duplicate entry 'XYZ' for key error, when tried to enter

-- Note : The column with unique constraint will accept multiple 'null' values

-- 3. PRIMARY KEY
-- ---------------------
-- It is will prevent the entry of 'null' & even the duplicates into the column on which it is applied.
-- Basically it is combination of 'NOT NULL' & 'UNIQUE' constraints

-- Examples
show create table my_table;

insert into my_table values(1,'Samarth'); -- Duplicate entry
insert into my_table values(NULL,'Steve'); -- NULL entry

-- Note: I can apply the 'NOT NULL', 'UNIQUE' constarints on multiple columns of a table individually, PK can be applied on only one column in a table
-- however there is a concept of 'Composite Primary Key', with which I can make multiple columns combinedly as PK.

-- Example
-- use world;
-- show create table countrylanguage;
-- desc countrylanguage;
-- select * from countrylanguage;

insert into countrylanguage values('ABW','DUTCH','T',5.3);

-- Note : A coulmn can have multiple constrainsts i.e. column <datatype> NOT NULL, UNIQUE

-- Foreign Key
-- -------------
-- Foreign key is basically used to establish the relation between two tables.
-- Example to create: employees & experience tables
	-- create table employees(eid int,ename varchar(30),department char(1));
	 create table emp_exp(eid int,foreign key(eid) references employees(eid),experience int);
-- Child table is one ON Which the foreign key constarint is applied i.e. will be reffereing the data from the other table which is parent 
-- Child & parent columns names need not be be same but datatype should be same.

-- WITH RESPECT TO CHILD TABLE
	-- INSERT
insert into emp_exp values(102,5); -- valid
insert into emp_exp values(null,5);  -- valid i.e. foreign key accepts null
insert into emp_exp values(101,5); -- valid foreign key accepts duplicates until some constraint is put.alter
insert into emp_exp values(105,9); -- invalid

	-- UPDATE
update emp_exp set eid = '101' where experience = 5; -- valid
update emp_exp set eid = '107' where experience = 5; -- invalid

-- Note : I cannot add or update a child row if the foreign key constraint is failing

-- WITH RESPECT TO PARENT
-- I cannot delete or update a data in the parent table, when there is dependency in the child table

-- Note : There is ON DELETE CASCADE feature, to delete the parent records even when there are dependency records in child
	-- Once deleted in parent, the dependent records in child table will also get deleted

-- 5. CHECK 
-- -------------------
-- Check constraint is basically used to apply certain condition on the column, so as to allow only a specific values to enter into the column.
-- Can be independently applied on multiple columns of a table.

-- Examples
-- create table table1(Id int,Name varchar(30),Salary int check(Salary between 20000 and 50000));
insert into table1 values(1,'Samarth',25000); -- Valid
insert into table1 values(2,'Varun',6000); -- Not Valid

-- create table table2(Id int,Name varchar(30),Salary int check(Salary in(1000,2000,3000)));
insert into table2 values(1,'Samarth',1000); -- Valid
insert into table2 values(2,'Varun',4000); -- Invalid

-- 6. DEFAULT
-- --------------------
-- This is used to provide a default value to the column.
-- When no data is provided to the column on which the default constraint is applied, while insering a record a default specified value is provided.
-- I can apply the DEFAULT constraint independetly on multiple columns of a table
-- By default MySQL gives all the columns of a table will have DEFAULT constarint with default value as NULL.
-- DEFAULT constraint is used to make fields as optional in gui

-- Examples
-- create table table3(OrderId int,OrderDate datetime default now());

insert into table3 values(100,now());
insert into table3(orderid) values(101); -- For default
-- Note: In Case of default one, I need to specify the columns & values both, so to make specify which cloumns to which values

--  AUTO INCREMENT
-- --------------------
-- It is feature in MySQL
-- It can be applied on the columns having numeric data types & which is having primary key constratint
-- It comes under DDL

-- use mydb;
-- create table table1(sno int primary key auto_increment,sname varchar(30));
-- alter table table1 auto_increment = 100;

insert into table1(sname) values('Samarth'); -- I need not insert the sno here
insert into table1(sname) values('hulk');

-- Note: 
-- If any record(s) are deleted, the auto-increment will alaways populate new/next increment values, not use the alreday used values
-- By default the auto-increment will start from 1 then it will start incrementing, however I can  provide the stating value while defining the table