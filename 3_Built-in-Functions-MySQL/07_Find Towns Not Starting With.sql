USE soft_uni;

-- Write a SQL query to find all towns that does not start with letters R, B or D. Order them alphabetically by name. 
SELECT *
FROM soft_uni.towns AS t
WHERE t.name NOT LIKE 'R%'
OR t.name NOT LIKE 'B%'
OR t.name NOT LIKE 'D%'
ORDER BY t.name;

SELECT *
FROM soft_uni.towns AS e;
