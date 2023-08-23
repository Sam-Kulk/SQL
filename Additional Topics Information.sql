-- 1. VIEWS
-- -----------
-- A view is basically a virtual table formed from the result-set of an SQL statement
-- Once View is created it can be seen in the views section of the db
-- Virtual means it will not be any physical or real table i.e. it will not occupy any space, it is just a reference of result-set of an SQL statement
-- I can execute different SQL statements on view as if it is a real table
-- If any changes in the real table, it will be affected in the view & visa versa is true & false in some cases 
-- The Purpose of the view is to not give the direct access to the table to others, which may lead issues.
-- Syntax : create view <viewNmae> as <SQL Statement>

-- Example 
-- use world;
create view my_view as select * from city;

select * from my_view;
select * from city;

-- update city set Population = 17800000 where ID = 1; 
-- update my_view set Population = 178 where ID = 1;

-- INDEX
-- -----------
-- The index concept is used on tables to improve the performance of all the SQL statements to be executed on them & therby improving the overall db performance
-- Done by one who designs database/tables