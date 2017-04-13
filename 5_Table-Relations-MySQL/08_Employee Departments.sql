-- Write a query that selects:
-- •	employee_id
-- •	first_name
-- •	salary
-- •	department_name
-- Filter only employees with salary higher than 15000. Return the first 5 rows sorted by DepartmentID in ascending order.


USE soft_uni;

SELECT e.employee_id, e.job_title, e.address_id, a.address_text
FROM employees AS e 
INNER JOIN addresses AS a
ON e.address_id = a.address_id
ORDER BY e.address_id
LIMIT 5;


SELECT * 
FROM employees;

select * 
FROM addresses;
