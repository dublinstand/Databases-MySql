-- For each country, find the elevation of the highest peak and the length of the longest river, sorted by the highest peak elevation
-- (from highest to lowest), then by the longest river length (from longest to smallest), then by country name (alphabetically).
--  Display NULL when no data is available in some of the columns. Submit for evaluation the result grid with headers. Limit only the first 5 rows.


USE geography;

SELECT c.country_name, MAX(p.elevation) AS highest_peak_elevation, MAX(r.length) AS longest_river_length
FROM countries AS c
LEFT JOIN mountains_countries AS mc ON c.country_code = mc.country_code
LEFT JOIN mountains AS m ON m.id = mc.mountain_id
LEFT JOIN peaks AS p ON p.mountain_id = m.id
LEFT JOIN countries_rivers AS cr ON cr.country_code = c.country_code
LEFT JOIN rivers AS r ON r.id = cr.river_id
GROUP BY c.country_name
ORDER BY highest_peak_elevation DESC, longest_river_length DESC, c.country_name ASC
LIMIT 5;



SELECT * 
FROM countries;

SELECT * 
FROM mountains;

SELECT *
FROM mountains_countries;

SELECT * 
FROM rivers;

SELECT *
FROM countries_rivers;

SELECT * 
FROM peaks;
