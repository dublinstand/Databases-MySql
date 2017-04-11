USE soft_uni;

-- Count the salaries of all employees who don’t have a manager.

SELECT COUNT(*)
FROM employees AS e
WHERE e.manager_id IS NULL;

SELECT * 
FROM employees;





