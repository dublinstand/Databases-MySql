-- Create stored procedure usp_get_employees_salary_above that accept a number as parameter and return all employees’ 
-- first and last names whose salary is above or equal to the given number.  

USE soft_uni;

DELIMITER &&
CREATE PROCEDURE usp_get_employees_salary_above(salary INT)
BEGIN
	SELECT e.first_name, e.last_name
	FROM employees AS e
	WHERE e.salary > salary;
END &&
DELIMITER;

CALL usp_get_employees_salary_above(80000);

