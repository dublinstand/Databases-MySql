USE soft_uni;

-- Write a SQL query to find the first and last names of all employees whose job titles does not contain “engineer”.  
SELECT e.first_name AS firstName, e.last_name
FROM soft_uni.employees AS e
WHERE e.job_title NOT LIKE '%engineer%';

SELECT *
FROM soft_uni.employees AS e;
