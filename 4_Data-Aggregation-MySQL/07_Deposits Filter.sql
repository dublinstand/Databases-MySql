USE gringotts;

-- Select all deposit groups and its total deposit sum but only for the wizards who has their magic wand crafted by Ollivander family. 
-- After this filter total deposit amounts lower than 150000. Order by total deposit amount in descending order.
SELECT deposit_group, SUM(deposit_amount) AS total_sum
FROM wizzard_deposits 
WHERE magic_wand_creator = 'Ollivander family' 
GROUP BY deposit_group
HAVING SUM(deposit_amount) < 150000
ORDER BY total_sum DESC;

SELECT *
FROM wizzard_deposits AS w;
