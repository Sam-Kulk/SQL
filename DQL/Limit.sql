-- Limit is a keyword that is used with the SELECT caluse
-- It is used to display the limited rows from the result-set
-- There is a gui feature for this in MySQL workbench

-- use world;

-- Examples
select * from city 
limit 10;

select * from city
limit 5,5;  -- Start after the 5th row i.e. from 6th row & disply the next 5 rows