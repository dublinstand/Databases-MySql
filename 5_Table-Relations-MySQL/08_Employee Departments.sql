-- Write a query that selects:
-- •	employee_id
-- •	first_name
-- •	salary
-- •	department_name
-- Filter only employees with salary higher than 15000. Return the first 5 rows sorted by DepartmentID in ascending order.


USE soft_uni;

SELECT e.employee_id, e.first_name, e.salary, d.name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id
WHERE e.salary > 15000 
ORDER BY e.department_id
LIMIT 5;


SELECT * 
FROM employees;

select * 
FROM departments;
