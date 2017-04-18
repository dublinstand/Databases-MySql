-- Write a query that selects country_code. Find all the count of all countries which don’t have a mountain.


USE geography;

SELECT COUNT(c.country_code) AS country_code
FROM countries AS c
LEFT JOIN mountains_countries AS m
ON c.country_code = m.country_code
WHERE m.mountain_id IS NULL;


SELECT * 
FROM countries;

SELECT * 
FROM mountains;

SELECT *
FROM mountains_countries;

