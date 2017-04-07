USE geography;

-- Combine all peak names with all river names, so that the last letter of each 
-- peak name is the same like the first letter of its corresponding river name. 
-- Display the peak names, river names, and the obtained mix. Sort the results by the obtained mix. 
SELECT c.country_name AS countryName, c.iso_code
FROM countries AS c
WHERE c.country_name LIKE '%a%a%a%'
ORDER BY c.iso_code;

SELECT p.peak_name, r.river_name, CONCAT(LOWER(p.peak_name),LOWER(r.river_name)) AS mix
FROM peaks AS p, rivers AS r
WHERE SUBSTRING(p.peak_name, LENGTH(p.peak_name), 1) = SUBSTRING(r.river_name, 1, 1); 


SELECT p.peak_name
FROM peaks AS p
WHERE SUBSTRING(p.peak_name, LENGTH(p.peak_name), 1) = 'a';

 SELECT r.river_name
FROM rivers AS r
WHERE SUBSTRING(r.river_name, 1, 1) = 'a';

SELECT p.peak_name 
FROM peaks AS p;

SELECT * 
FROM rivers;

