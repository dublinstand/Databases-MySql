USE gringotts;

-- -- Age groups should be as follows:
-- •	[0-10]
-- •	[11-20]
-- •	[21-30]
-- •	[31-40]
-- •	[41-50]
-- •	[51-60]
-- •	[61+]
-- The query should return
-- •	Age groups
-- •	Count of wizards in it


SELECT CASE
		 WHEN  w.age <= 10 THEN '[0-10]'
		 WHEN  w.age <= 20 THEN '[11-20]'
		 WHEN  w.age <= 30 THEN '[21-30]'
		 WHEN  w.age <= 40 THEN '[31-40]'
		 WHEN  w.age <= 50 THEN '[41-50]'
		 WHEN  w.age <= 60 THEN '[51-60]'
		 ELSE '[61+]'	
		 END AS age_group, COUNT(*) wizard_count
FROM wizzard_deposits AS w 
GROUP BY CASE
		 WHEN  w.age <= 10 THEN '[0-10]'
		 WHEN  w.age <= 20 THEN '[11-20]'
		 WHEN  w.age <= 30 THEN '[21-30]'
		 WHEN  w.age <= 40 THEN '[31-40]'
		 WHEN  w.age <= 50 THEN '[41-50]'
		 WHEN  w.age <= 60 THEN '[51-60]'
		 ELSE '[61+]'	
		 END;

SELECT *
FROM wizzard_deposits AS w;
