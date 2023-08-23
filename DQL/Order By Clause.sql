-- The Order By Clause is basically used to sort the result set in ascending or descending order based on the values present in a particular column.
-- The Order By Clause should be always a last clause when used.
-- Syntax - Order By ColumnName1 ASC OR DESC, ColumnName2 ASC OR DESC, so on
	-- Here ASC is optional, i.e. by default Order By sorts in ASC order
-- If other than numbers, ascii values are considered i.e. ASC will be alphbatical & DESC will be reverse.

select CountryCode,avg(Population)
from city
where CountryCode != 'AFG'
group by CountryCode
having avg(Population) > 1000000
order by avg(Population);

select CountryCode,avg(Population)
from city
where CountryCode != 'AFG'
group by CountryCode
having avg(Population) > 1000000
order by avg(Population) desc;

select CountryCode,avg(Population)
from city
where CountryCode != 'AFG'
group by CountryCode
having avg(Population) > 1000000
order by avg(Population) desc, CountryCode;

-- Note : The result set is initially sorted based on the values of the first column specified in the ORDER BY clause. 
	-- 	If there are duplicate values in the first column, the order is determined by the subsequent columns.
