-- Define a function ufn_is_word_comprised(set_of_letters, word) that returns true or false depending on that if the word 
-- is a comprised of the given set of letters. 
    

USE soft_uni;

DELIMITER &&
CREATE FUNCTION ufn_is_word_comprised (set_of_letters VARCHAR(10), word (10))
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

