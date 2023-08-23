use world;

select * from city;
select countrycode,disTrict,Population from city;
-- alias
select countrycode cc,population pop from city;

-- to display the distinct records
select distinct CountryCode from city;
select distinct CountryCode, District from city;
select distinct * from city;