-- There are actually 4 types of built-in functions in MySQL
	-- String - Works on string type of data
    -- Numeric - Works on numeric type of data
    -- Date - Works on date type of data
    -- Aggregate functions - Used to perform calculations on the rows(combindely) of a single column of the table, returing a single value.
        -- These are used to produce a sumarized result.
        -- These functions works on all data types.

-- Note: 
	-- There can be slight differences in the bulit-in functions of different RDBMS
	-- For all the functions column(s) names will be the arguments, so where ever columns will be specified there these functions needs to be used.
    -- The String, Numeric & Date functions can be used with SELECT & WHERE clauses, Aggregate functions can only be used in Select clause.

-- MOST USED STRING FUNCTIONS
-- 1. upper()
select upper(Name),upper(District) District from city;

-- 2. lower()
select lower(Name),lower(District) District from city;

-- 3.trim()
select trim('	HI	'); -- Basically trims the space character from both the ends

-- 4.concat()
select concat(Name,District) from city;


-- MOST USED NUMERIC FUNCTIONS
-- 1. abs()
select abs(GNP) GNP  from country;  -- Removes (-ve) & makes all the values as +ve.

-- 2. truncate
select truncate(123.12345,2); 
select truncate(GNP,1) GNP from country;


-- MOST USED DATE FUNCTIONS
--	1. year()
select * from film_actor where year(last_update)=2006;

-- 2. month() & monthname()
select * from film_actor where month(last_update)=02;
select * from film_actor where monthname(last_update)='February';

-- 3. day()
select * from film_actor where day(last_update)=15;


-- AGGREGATE FUNCTIONS
select max(Population) from city;
select min(Population) from city;
select sum(Population) from city;
select avg(Population) from city;

select count(*) from city;  -- To get total count of rows in a table.