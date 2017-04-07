USE soft_uni;

-- Write a SQL query to find town names that are 5 or 6 symbols long and order them alphabetically by town name. 
SELECT t.name
FROM soft_uni.towns AS t
WHERE LENGTH(t.name) IN (5, 6)
ORDER BY t.name;

SELECT *
FROM soft_uni.towns AS e;
