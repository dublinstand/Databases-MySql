USE geography;

-- Find all countries that holds the letter 'A' in their name at least 3 times (case insensitively), sorted by ISO code. Display the country name and ISO code. 
SELECT c.country_name AS countryName, c.iso_code
FROM countries AS c
WHERE c.country_name LIKE '%a%a%a%'
ORDER BY c.iso_code;


