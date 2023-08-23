-- where clause is used to filter the records based on the condition.
-- The condition will be sepecifed on the column(s) of the table.

-- WITH SELECT --
	-- Syntax:
	-- SELECT column1, column2, ...
	-- FROM table_name
	-- WHERE condition;


-- USING COMPARISON OPERATORS --
select * from country where LifeExpectancy = 66;
select * from country where Population > 9169000;
select * from country where Population < 21000;
select * from country where Population >= 22720000;
select * from country where Population <= 22720000;
select * from country where Population != 11669000;
	-- In order to specify a condition on/with null, i need to use 'IS' keyword , other wise the condition will not work.
select * from country where IndepYear is null;
select * from country where IndepYear is not null;
	-- If the condition is to be specifed is on the string type of data, then i need to use quotes
select * from country where name = 'Aruba';
select * from country where name != 'Aruba';

-- USING LOGICAL OPERATORS --
	-- logical operators are used to specify multiple conditions
	-- These conditions will be on different columns
-- 1. AND --
select * from city where CountryCode = 'NLD' and population > 593321;
-- 2. OR --
select * from city where CountryCode = 'NLD' or population > 593321;

-- BETWEEN OPERATORS -- 
	-- Used to filter the records, having the data in the specific range
select * from city where population between 10000 and 20000;
select * from city where population not between 10000 and 20000;

-- IN OPERATOR --
	-- The IN operator is basically an alternative/advancement of 'OR' operator.
select * from city where CountryCode in('AFG','NLD','ARG');
select * from city where CountryCode not in('AFG','NLD','ARG');


-- LIKE OPERATOR & WILD CARD CHARACTERS --
	-- The 'LIKE' operator along with 'Wild Card' characters is used for patter matching.
	
    -- '%' - Multiple characters(any) & the count can be even '0'.
select * from city where CountryCode like 'A%';
select * from city where CountryCode like '%E';
select * from city where CountryCode like '%R%';
select * from city where CountryCode like 'A%G';
select * from city where CountryCode not like 'A%';

	-- '_' - Any single character(This chracter is mandatory)
select * from city where CountryCode like 'IN_';
select * from city where CountryCode like '_FG';
select * from city where CountryCode like 'I_D';
select * from city where CountryCode like '_N_';
select * from city where Name like '_____'; -- (Five characters)
select * from city where CountryCode not like 'IN_';

	-- '%' & '_' combo
select * from city where Name like 'CAP%TOW_';
select * from city where Name not like 'CAP%TOW_';