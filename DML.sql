-- DML(Data Manipulation Language)
	-- INSERT, UPDATE & DELETE

-- INSERT
	-- This command is used to insert record in the table
insert into student values(101,'samarth','A');
insert into student values(101,'nandan',null);
insert into student(student_id,student_name) values(103,'tony');


-- UPDATE
	-- This command is basically used to update table data.
	-- syntax : UPDATE table_name
		-- 		SET column1 = value1, column2 = value2, ...
		-- 		WHERE condition;
			-- Here I can use conditions as used with 'select' clause

update employees
set salary = 5000
where department = 'Sales';
	

-- DELETE
	-- This command is used to delete the records from the table
	-- syntax :
		-- delete from table_name
        -- where condition
			-- Here I can use conditions as used with 'select' clause
            
delete from employees
where emp_id in(7697,7698,7699);

select * from city WHERE ID ='186' or ID = 187;


-- TRUNCATE VS DELETE
	-- Trancate comes under DDL & DELETE comes under DML
    -- With Truncate I cannot use Where, so it basically deletes all the records of the table in one go, whereas with Delete command I can use Where
    -- Trucate is faster compared to Delete
    -- With Trucate I cannot rollback even though the commit is not done, but after Delete I can rollback.
	-- Truncate is used to clear table & Delete is used to delete specific records.