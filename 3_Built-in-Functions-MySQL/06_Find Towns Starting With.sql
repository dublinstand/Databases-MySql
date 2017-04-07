USE soft_uni;

-- Write a SQL query to find all towns that start with letters M, K, B or E. Order them alphabetically by town name. 
SELECT *
FROM soft_uni.towns AS t
WHERE t.name LIKE 'M%'
OR t.name LIKE 'B%'
OR t.name LIKE 'K%'
OR t.name LIKE 'E%'
ORDER BY t.name;

SELECT *
FROM soft_uni.towns AS e;
