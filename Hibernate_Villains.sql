USE minions_db;

SELECT v.name AS name, COUNT(mv.minion_id) AS numbers_of_minions
FROM villains AS v
JOIN minions_villains AS mv
ON v.id = mv.villain_id
GROUP BY v.name
HAVING COUNT(mv.minion_id) > 3
ORDER BY COUNT(mv.minion_id) DESC;


SELECT m.name AS name, m.age AS age
FROM minions_villains AS mv
LEFT JOIN minions AS m
ON m.id = mv.minion_id
WHERE mv.villain_id = 5;

SELECT v.name
FROM villains AS v
WHERE v.id = 5;


SELECT *
FROM villains
WHERE name = 'Gru';

SELECT *
FROM minions AS m
WHERE m.id = 1; 

SELECT m.name, m.age
FROM minions AS m;

SELECT m.name, m.age, SUBSTRING(name, 1, 1)
FROM minions AS m;

UPDATE minions AS m
SET m.name = CONCAT(UCASE(LEFT(m.name, 1)), 
                             SUBSTRING(m.name, 2))
WHERE m.id = 1;

UPDATE minions AS m
SET m.age = m.age + 1
WHERE m.id = 1;



SELECT *
FROM towns
WHERE country = 'Germany';

UPDATE towns AS t
SET t.name = UPPER(t.name)
WHERE t.country = 'Bulgaria';

SELECT COUNT(*) AS total
FROM towns AS t
WHERE t.country = 'Bulgaria';

SELECT t.name
FROM towns AS t
WHERE t.country = 'Bulgaria';