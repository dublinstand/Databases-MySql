-- Write a query that selects:
-- •	employee_Id
-- •	first_name
-- •	project_name
-- Write a query that selects:
-- •	employee_id
-- •	first_name
-- •	project_name
-- Filter all the projects of employee with id 24. If the project has started after 2005 the return value should be NULL.

USE soft_uni;

SELECT e.employee_id, e.first_name, p.name
FROM employees AS e
INNER JOIN employees_projects AS ep
ON e.employee_id = ep.employee_id
LEFT JOIN projects AS p
ON ep.project_id = p.project_id 
AND p.start_date < '2005-01-01'
WHERE e.employee_id = 24;


SELECT * 
FROM employees;

select * 
FROM projects;

select * 
FROM employees_projects;
