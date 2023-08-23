-- The Join clause is basically used to retrive the data/records multiple related tables, by joining the tables based on the common column present between them.
-- There are five types of Joins i.e. Inner, Right, Left, Cross & Self join
-- Inner & Self are the one that are mostly used.

-- Inner Join : It retrives the matching records between the specified tables.
-- Here & also in the other join the matching condition is checked on the values present in the common column present with the specified tables.
-- Refer diagram for better understanding
-- Syntax : 
	-- select table.column, column (table.column is good practice to follow whereever dealing with multiple tables, but is used when differet columns have same columns)
    -- from table1
    -- inner join table2 on table1.common_column_name = table2.common_column_name
	-- inner join table3 on table2.common_column_name = table3.common_column_name
			-- In case of three tables, the value that is common in all the three tables is considered
-- Right, Left & cross joins are not so important, for details I can refer w3schools

-- Self Join
-- Syntax : 
	-- SELECT column_name(s)
	-- FROM table1 T1, table1 T2
	-- WHERE condition;
-- Here table is kind of duplicated with alias & compared with itself
-- EMP_ID, EMP_NAME, MAG_ID, display the EMP_NAME of the employees who are managers, is one of the example of the scenario where the self join is used

select E1.EMP_NAME
from Employees E1, Employees E2
where E1.EMP_ID = E2.MAG_ID