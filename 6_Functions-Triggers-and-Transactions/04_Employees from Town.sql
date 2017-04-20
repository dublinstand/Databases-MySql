-- Write a stored procedure usp_get_employees_from_town that accepts town name as parameter and return the employees’ 
-- first and last name that live in the given town.    

USE soft_uni;

DELIMITER &&
CREATE PROCEDURE usp_get_employees_from_town(townName VARCHAR(50))
BEGIN
	SELECT e.first_name, e.last_name, t.name
	FROM employees AS e
	INNER JOIN addresses AS a
	ON e.address_id = a.address_id
	INNER JOIN towns AS t
	ON a.town_id = t.town_id
	WHERE t.name = townName;
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

