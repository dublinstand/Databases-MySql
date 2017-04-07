USE diablo;

-- Find all games with part of the day and duration sorted by game name alphabetically then by duration and part of the day. 
-- Parts of the day should be Morning (time is >= 0 and < 12), After-- noon (time is >= 12 and < 18), Evening (time is >= 18 and < 24).
-- Duration should be Extra Short (smaller or equal to 3), Short (between 4 and 6 including), Long (greater than 6) and Extra Long (without duration). 
SELECT g.name, 
		CASE 
		WHEN HOUR(g.`start`) >= 0 AND HOUR(g.`start`) < 12 THEN 'Morning'
		WHEN HOUR(g.`start`) >= 12 AND HOUR(g.`start`) < 18 THEN 'Afternoon'
		WHEN HOUR(g.`start`) >= 18 AND HOUR(g.`start`) < 24 THEN 'Evening'
		END AS `Part of the Day`,
		CASE 
		WHEN g.duration <= 3 THEN 'Extra Short'
		WHEN g.duration > 4 AND g.duration <= 6 THEN 'Short'
		WHEN g.duration > 6 THEN 'Long'
		WHEN g.duration IS NULL THEN 'Extra Long'
		END AS `Duration`		
FROM games AS g
ORDER BY g.name, g.duration;


SELECT *
FROM games;