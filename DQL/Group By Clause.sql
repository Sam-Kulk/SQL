-- Group By Clause is basically used to group the result set based on the values present in a particular column or combination 
	-- of the values of different columns.
-- Group By Clause is often used with the aggregate functions to obtain some kind of summarized result for the groups formed by group by clause.
-- Basically the Group By Clause allows the usage of combination of columns & aggregate functions in the Select Clause

select CountryCode,avg(Population) from city group by CountryCode;
select CountryCode,avg(Population),sum(population) from city group by CountryCode;
select CountryCode,count(Name) from city group by CountryCode;
select CountryCode,District,avg(Population) from city group by CountryCode,District;

-- Note: All the Columns which are without the aggregate functions mentioned in the Select list should be present in the
	-- Group By Clause.