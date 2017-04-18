-- Write a query that selects:
-- •	country_code
-- •	mountan_range
-- •	peak_name
-- •	elevation
-- Filter all peaks in Bulgaria with elevation over 2835. Return the all rows sorted by elevation in descending order.

USE geography;

SELECT c.country_code, m.mountain_range, p.peak_name, p.elevation
FROM countries AS c
INNER JOIN mountains_countries AS mc
ON c.country_code = mc.country_code
INNER JOIN mountains AS m
ON m.id = mc.mountain_id
INNER JOIN peaks AS p
ON p.mountain_id = m.id
WHERE c.country_code = 'BG'
AND p.elevation > 2835
ORDER BY p.elevation DESC;

SELECT * 
FROM countries;

SELECT * 
FROM mountains;

SELECT *
FROM mountains_countries;

SELECT * 
FROM peaks;
