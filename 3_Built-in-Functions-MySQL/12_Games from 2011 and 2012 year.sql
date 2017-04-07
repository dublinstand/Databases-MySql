USE diablo;

-- Find the top 50 games ordered by start date, then by name of the game. Display only games from 2011 and 2012 year. Display start date in the format “YYYY-MM-DD”. 
SELECT g.name, DATE_FORMAT(g.`start`, '%Y-%m-%d') AS new_date
FROM games AS g
WHERE g.`start` BETWEEN '2011-01-01' AND '2012-12-31'
ORDER BY g.start, g.name
LIMIT 50;


SELECT *
FROM games;