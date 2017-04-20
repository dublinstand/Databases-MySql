-- Write a function ufn_get_salary_level that receives salary of an employee and returns the level of the salary.
-- •	If salary is < 30000 return “Low”
-- •	If salary is between 30000 and 50000 (inclusive) return “Average”
-- •	If salary is > 50000 return “High”
    

USE soft_uni;

DELIMITER &&
CREATE FUNCTION ufn_get_salary_level (salary INT)
RETURNS VARCHAR(10)
BEGIN
	DECLARE salary_level VARCHAR(10);
	IF (salary < 30000) THEN SET salary_level := 'Low';
	ELSE IF (salary >= 30000 AND salary < 50000) THEN SET salary_level := 'Average';
	ELSE SET salary_level := 'High';
	END IF;	
	END IF;
	RETURN (salary_level);
END &&
DELIMITER;

CALL usp_get_employees_from_town('Sofia');

SELECT e.first_name, e.last_name, t.name
FROM employees AS e
INNER JOIN addresses AS a
ON e.address_id = a.address_id
INNER JOIN towns AS t
ON a.town_id = t.town_id
WHERE t.name = 'Sofia';

SELECT *
FROM towns;

SELECT *
FROM employees
WHERE address_id = 32;

SELECT *
FROM addresses;

