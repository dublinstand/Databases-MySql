USE soft_uni;

-- Find the max salary for each department. Filter those which have max salaries not in the range 30000 and 70000


SELECT e.department_id, MAX(e.salary) AS max_salary
FROM employees AS e
GROUP BY e.department_id
HAVING MAX(e.salary) NOT BETWEEN 30000 AND 70000;

SELECT * 
FROM employees;





