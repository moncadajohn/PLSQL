 select region_name from regions
 NATURAL JOIN countries
 where country_name = 'Canada';
 
select country_name from countries
NATURAL JOIN REGIONS
where region_name = 'Americas';

select region_name FROM regions
JOIN COUNTRIES USING(region_id)
WHERE country_name = 'Canada';

select country_name
FROM countries JOIN regions
ON(countries.REGION_ID = regions.REGION_ID)
WHERE REGION_NAME = 'Americas';

SELECT count(*) from countries; --25
SELECT count(*) from regions; --4

select * from regions CROSS JOIN countries;

select count(*) from regions CROSS JOIN countries;
