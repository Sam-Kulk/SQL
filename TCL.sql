-- TCL stands for Transcation Control Language
-- TCL is used to manage the transcations within the database, basically to rollback/commit the changes done in the table data
-- A transcation is nothing but a DML statement i.e. delete, update or insert statements

-- autocommit
	-- In MySQL, By default autocommit is set to '1' i.e. true or on 
    -- If autocommit is on, then every individual statement like INSERT, UPDATE, or DELETE is automatically followed by a COMMIT statement, which means the changes made by that statement are immediately saved to the database and cannot be rolled back.
    -- I can set the autocommit to '0' i.e. false or off.
    -- If the autocommit is off, the changes made are temporary i.e. are not committed to db & later I can commit all the changes using COMMIT statement.    

set autocommit = 0;
use world;
select * from city;
-- Now if I close & reopen the connection, the changes will be undone

delete from city where ID = 99;
update city set population = 100 where ID =98;
rollback;

-- Note: If autocommit is set to 0, then there are two ways to remove it
	-- 1. execute set autocommit=1
    -- 2. Close & reopen the connection, this will set again autocommit as 1
		-- Basically if any condition like use or set is applied, they will be removed when I close & reopen the workbench

delete from city where ID = 99;
commit;
rollback;