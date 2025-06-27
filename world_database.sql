USE world;

--   Retrieve the names of countries from the "country" table along with a column indicating whether their population is above 100 million or not.
SELECT 
    name,
    CASE
        WHEN population > 100000000 THEN 'Above 100 million'
        ELSE '100 million or less'
    END AS population_category
FROM
    country;
	
--   Retrieve the names of cities from the "city" table along with a column indicating whether their population is above 5 million or not
SELECT 
    name,
    CASE 
        WHEN population > 5000000 THEN 'Above 5 million'
        ELSE '5 million or less'
    END AS population_category
FROM 
    city;
    
--   Retrieve the names of countries from the "country" table, where the country's name starts with either 'A', 'E', 'I', 'O', or 'U'.
SELECT 
    name
FROM 
    country
WHERE 
    name LIKE 'A%' OR
    name LIKE 'E%' OR
    name LIKE 'I%' OR
    name LIKE 'O%' OR
    name LIKE 'U%';
    
--   Retrieve the names of cities from the "city" table, where the city name contains the word 'New' followed by any characters.
SELECT
	name
FROM
	city
WHERE
	name LIKE "New%";
    
--   Retrieve the names of countries from the "country" table, where the country's name starts with either 'U' or 'V'.
SELECT
	name
FROM
	country
WHERE
	name LIKE "u%" OR name LIKE "v%";
    
--   Retrieve the names of countries from the "country" table, where the country's name ends with either 'ia' or 'land'.
SELECT 
    name
FROM
    country
WHERE
    name LIKE '%ia'
        OR name LIKE '%land';
    
