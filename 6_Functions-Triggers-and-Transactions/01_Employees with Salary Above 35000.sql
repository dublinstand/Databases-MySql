-- Create stored procedure usp_get_employees_salary_above_35000 that returns all employees’ first and last names for whose salary is above 35000. 

USE soft_uni;

DELIMITER &&
CREATE PROCEDURE usp_get_employees_salary_above_35000()
BEGIN
	SELECT e.first_name, e.last_name
	FROM employees AS e
	WHERE e.salary > 35000;
END &&
DELIMITER;

CALL usp_get_employees_salary_above_35000;

