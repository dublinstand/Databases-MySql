USE gringotts;

-- Write a query that returns all unique wizard first letters of their first names only if they have deposit of type Troll Chest. 
-- Order them alphabetically. Use GROUP BY for uniqueness.


SELECT SUBSTRING(w.first_name, 1, 1) AS first_letter
FROM wizzard_deposits AS w
WHERE w.deposit_group = 'Troll Chest'
GROUP BY SUBSTRING(w.first_name, 1, 1)
ORDER BY first_letter;


SELECT *
FROM wizzard_deposits AS w;
