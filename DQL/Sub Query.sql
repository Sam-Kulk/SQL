-- Sub Query is basically a query within a query
-- In Sub query there will be two parts i.e. outer & inner query
-- The inner query gets executed first
-- The output of the inner query becomes the input of the outer query
-- There are two types of sub queries i.e single row & multi row
	-- Single row subquery returns a single row/value
    -- Multi row subquery returns a multiple rows/values

-- If I need to find/query some value/s(usually it will a row of single value) before querying the expected, then I need to use sub qurey

select * from city;

-- Examples(Single row sub query)
	-- Display the names of the cities whose population is less than Kabul
select Name 
from city
where population < (select population
from city
where Name ='Kabul');

	-- Display the third highest population
select max(population) from city 
where population<(select max(population) from city where population < (select max(population) from city));

-- Examples(Multi row sub query)
	-- Display the Name of the cities whose population is equal to any of the cities with countrycode as 'CHN'
select Name 
from city
where population in (select Population  -- in operator for equals with or
from city
where CountryCode = 'CHN');

	-- Display the Name of the cities whose population is less than any of the cities with countrycode as 'CHN'
select Name 
from city
where population < any (select Population  -- I can even use > any for vice versa scenario
from city
where CountryCode = 'CHN');

	-- Display the Name of the cities whose population is greater than all of the cities with countrycode as 'CHN'
select Name 
from city
where population > all (select Population  -- I can even use > any for vice versa scenario
from city
where CountryCode = 'CHN');

-- Note : In case of single row sub query i need to use comrarison operators & in case of multi row sub
	-- sun query i need to use in, any & all keywords




