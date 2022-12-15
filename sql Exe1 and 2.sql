create database world;
use world;

SELECT 'Hello World' AS message, 123 AS id;
SELECT * FROM city;
SELECT * FROM city WHERE District > 'aceh';
select * FROM city where CountryCode = 'bfa';
select Name, District FROM city where CountryCode = 'tto';
select Name as nm, District as dist FROM city where CountryCode = 'arm';
select Name from city where Name LIKE 'bor%';
select Name from city where Name LIKE '%orto%';
select Name from city where Population < 1000;
select distinct(CountryCode) from city where Population < 1000;
select Name from city where CountryCode = 'UKR' and Population > 1000000;
select Name From city where Population < 200 OR Population > 9500000 ;
select Name from city where CountryCode IN ('TJK', 'MRT', 'AND', 'PNG', 'SJM');
SELECT Name FROM city WHERE Population >= 200 AND Population <= 700;
SELECT  Name from country WHERE Population >= 8000 AND Population <= 20000;
SELECT Name from country where IndepYear < 0;
SELECT Name from country where IndepYear is null AND Population >1000000;
SELECT Name from country where SurfaceArea < 10 AND LifeExpectancy is not null;

select * from city where name like 'ping%' ORDER BY Population;

select * from city where name like 'ran%' ORDER BY Population DESC;

select count(*) from city;

select AVG(Population) from city;

select MAX(Population) from city;

select MIN(Population) from city;

SELECT SUM(population) FROM city WHERE population < 10000;

select count(*) from city where CountryCode IN ('MOZ','VNM');

SELECT CountryCode, COUNT(name) FROM city WHERE CountryCode IN ('MOZ', 'VNM') GROUP BY CountryCode;

SELECT AVG(Population) FROM city WHERE CountryCode IN ('MOZ', 'VNM');

SELECT CountryCode FROM City GROUP BY CountryCode HAVING COUNT(name) > 200;

SELECT CountryCode, COUNT(name) AS city_count FROM city GROUP BY CountryCode HAVING COUNT(name) > 200 ORDER BY city_count DESC;

SELECT cl.Language
FROM countrylanguage cl
INNER JOIN city c ON cl.CountryCode = c.CountryCode
WHERE c.Population BETWEEN 400 AND 500;

SELECT c.name, cl.language
FROM city c
INNER JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode
WHERE c.population BETWEEN 500 AND 600;











 

