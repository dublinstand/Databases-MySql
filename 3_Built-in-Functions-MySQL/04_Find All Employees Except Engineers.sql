USE soft_uni;

-- Find all users along with their IP addresses sorted by username alphabetically. 
-- Display only rows that IP address matches the pattern: “***.1^.^.***”. Legend: * - one symbol, ^ - one or more symbols
SELECT e.first_name AS firstName, e.last_name
FROM soft_uni.employees AS e
WHERE e.job_title NOT LIKE '%engineer%';

SELECT *
FROM soft_uni.employees AS e;
