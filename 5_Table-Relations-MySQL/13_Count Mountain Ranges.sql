-- Write a query that selects:
-- •	country_code
-- •	mountan_ranges
-- Filter the count of the mountain ranges in the USA, Russia and Bulgaria.


USE geography;

SELECT c.country_code, COUNT(*) AS mountain_ranges
FROM countries AS c
INNER JOIN mountains_countries AS mc
ON c.country_code = mc.country_code
WHERE c.country_code IN ('BG', 'US', 'RU')
GROUP BY c.country_code;



SELECT * 
FROM countries;

SELECT * 
FROM mountains;

SELECT *
FROM mountains_countries;

SELECT * 
FROM peaks;
