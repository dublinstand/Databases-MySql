-- Write a stored procedure usp_get_towns_starting_with that accept string as parameter and returns all town names starting with that string.   

USE soft_uni;

DELIMITER &&
CREATE PROCEDURE usp_get_towns_starting_with (startsWith VARCHAR(50))
BEGIN
	SELECT t.name
		FROM towns AS t
	WHERE SUBSTRING(t.name, 1, LENGTH(startsWith)) = startsWith;
END &&
DELIMITER;

CALL usp_get_towns_starting_with('bo');

