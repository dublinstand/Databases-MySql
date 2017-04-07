USE soft_uni;

-- Problem 9.	Length of Last Name
SELECT e.first_name AS firstName, e.last_name, LENGTH (e.last_name) AS LengthOfLastName
FROM soft_uni.employees AS e;

