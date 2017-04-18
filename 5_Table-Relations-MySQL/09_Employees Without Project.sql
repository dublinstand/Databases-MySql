-- Write a query that selects:
-- •	employee_id
-- •	first_name
-- Filter only employees without a project. Return the first 3 rows sorted by employee_id in ascending order.



USE soft_uni;

SELECT e.employee_id, e.first_name
FROM employees AS e
LEFT JOIN employees_projects AS p
ON e.employee_id = p.employee_id 
WHERE p.employee_id IS NULL
ORDER BY e.employee_id
LIMIT 3;


SELECT * 
FROM employees;

select * 
FROM projects;

select * 
FROM employees_projects;
