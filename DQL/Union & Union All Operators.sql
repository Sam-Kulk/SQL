-- The Union operator is used to combine the result-set of two or more queries, by eliminating dublicate values.
-- If I want to include dublicate values then Union All should be used.
-- More than one query are used to retrive the data from multiple tables.
-- Syntax :
	-- SELECT column_name(s) FROM table1 or QUERY1
    -- UNION or UNION ALL
	-- SELECT column_name(s) FROM table2 OR QUERY2;
-- Rules to be followed while using Union operator
	-- Every SELECT statement within UNION must have the same number of columns
	-- The columns must also have similar data types
	-- The columns in every SELECT statement must also be in the same order
    
select CountryCode from city
union
select Code from country;

select Code,Name from country
union
select CountryCode,Name from city;

select Code,Name from country
union all
select CountryCode,Name from city;