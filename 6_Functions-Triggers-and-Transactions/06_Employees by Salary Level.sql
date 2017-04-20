-- Write a stored procedure usp_get_employees_by_salary_level that receive as parameter level of salary 
-- (low, average or high) and print the names of all employees that have given level of salary.  

USE soft_uni;

DELIMITER &&
CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level VARCHAR(10))
BEGIN
	DECLARE salary_border DECIMAL;
	IF (salary_level = 'low') THEN SET salary_border = 13500.00;
	ELSE IF (salary_level = 'average') THEN SET salary_border = 43300.00;
	ELSE SET salary_border = 125500.00;
	END IF;
	END IF;
	SELECT e.first_name, e.last_name
	FROM employees AS e	
	WHERE e.salary >= salary_border;
END &&
DELIMITER;

CALL usp_get_employees_from_town('high');

SELECT e.first_name, e.last_name
	FROM employees AS e	
	WHERE e.salary >= 125500.00;

SELECT *
FROM towns;

SELECT *
FROM employees
WHERE address_id = 32;

SELECT *
FROM addresses;

