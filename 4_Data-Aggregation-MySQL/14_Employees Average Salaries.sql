USE soft_uni;

-- Select all employees who earn more than 30000 into a new table. Then delete all employees who has manager_id = 42; 
-- Then increase the salaries of all employees with department_id =1 with 5000. Finally, select the average salaries in each department.

CREATE TABLE employees_over_30000 
AS SELECT * FROM employees AS e
WHERE e.salary > 30000;

DELETE 
FROM employees_over_30000 
WHERE department_id = 42;

UPDATE employees_over_30000 AS e
SET e.salary = e.salary + 5000
WHERE e.department_id = 1;

SELECT department_id, AVG(salary) AS average_salary
FROM employees_over_30000
GROUP BY department_id;

SELECT *
FROM employees_over_30000;

SELECT * 
FROM employees;





