USE soft_uni;

-- Select the minimum salary from the employees for departments with ID (2,5,7) but only for those who are hire after 01/01/2000.
-- Your query should return:
-- •	department_id


SELECT e.department_id, MIN(e.salary) AS minimum_salary
FROM employees AS e
WHERE e.hire_date > '2000-01-01'
AND e.department_id IN (2,5,7)
GROUP BY e.department_id;


SELECT * 
FROM employees;


