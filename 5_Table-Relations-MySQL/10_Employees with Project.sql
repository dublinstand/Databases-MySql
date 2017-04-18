-- Write a query that selects:
-- •	employee_Id
-- •	first_name
-- •	project_name
-- Filter only employees with a project which has started after 13.08.2002 and 
-- it is still ongoing (no end date). Return the first 5 rows sorted by employee_id in ascending order.


USE soft_uni;

SELECT e.employee_id, e.first_name, p.name
FROM employees AS e
INNER JOIN employees_projects AS ep
ON e.employee_id = ep.employee_id
INNER JOIN projects AS p
ON ep.project_id = p.project_id 
WHERE p.start_date > '2002-08-13'
AND p.end_date IS NULL
ORDER BY e.employee_id ASC
LIMIT 5;


SELECT * 
FROM employees;

select * 
FROM projects;

select * 
FROM employees_projects;
