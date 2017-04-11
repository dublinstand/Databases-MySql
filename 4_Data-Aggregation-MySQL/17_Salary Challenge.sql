USE soft_uni;

-- Write a query that returns
-- •	first_name
-- •	last_name
-- •	department_id
-- for all employees who have salary higher than the average salary of their respective departments. Select only the first 10 rows. Order by department_id.


SELECT e.first_name,e.last_name,e.department_id
    FROM employees AS e , employees AS m
        WHERE e.department_id = m.department_id
        AND e.salary > (
                           SELECT avg(salary)  FROM employees
                           WHERE department_id = e.department_id
                            )
    GROUP BY e.first_name,e.last_name,e.department_id
    ORDER BY e.department_id
LIMIT 10;

SELECT * 
FROM employees;





