-- The Having Clause is used to apply condition to filter the records that are obtained from the Group By Clause.
-- Generally the condition is applied on the aggregate function column.

select CountryCode,avg(population) from city group by CountryCode having avg(Population)>500000;

-- Note: Where vs Having clause
	-- Where clause is used to apply condition to filter the records obtained from 'Select' clause.
    -- Having Clause is used to apply condition to filter the records that are obtained from the Group By Clause.

select CountryCode,avg(Population) from city
where CountryCode != 'AFG'
group by CountryCode
having avg(Population) > 1000000;