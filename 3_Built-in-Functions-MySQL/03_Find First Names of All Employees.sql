USE soft_uni;

-- Write a SQL query to find the first names of all employees in the departments with ID 3 or 10 and whose hire year is between 1995 and 2005 inclusive. 
SELECT e.first_name AS firstName
FROM soft_uni.employees AS e
WHERE e.employee_id IN (3, 10)
AND YEAR(e.hire_date) BETWEEN 1995 and 2001;
