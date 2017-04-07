USE soft_uni;

-- Write a SQL query to find first and last names of all employees whose first name starts with “SA”. 
SELECT e.first_name AS firstName, e.last_name AS lastName
FROM soft_uni.employees AS e
WHERE e.first_name LIKE 'SA%';