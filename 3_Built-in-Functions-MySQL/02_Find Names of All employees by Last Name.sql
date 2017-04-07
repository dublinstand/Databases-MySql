USE soft_uni;

-- Write a SQL query to find first and last names of all employees whose last name contains “ei”. 
SELECT e.first_name AS firstName, e.last_name AS lastName
FROM soft_uni.employees AS e
WHERE e.last_name LIKE '%EI%';