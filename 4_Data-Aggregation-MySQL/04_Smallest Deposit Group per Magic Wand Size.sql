USE gringotts;

-- Select the deposit group with the lowest average wand size.
SELECT deposit_group FROM
(SELECT deposit_group, AVG(magic_wand_size) AS
average_magic_wand_size
	FROM wizzard_deposits
	GROUP BY deposit_group) AS avgm
	WHERE average_magic_wand_size = ( SELECT 
		MIN(average_magic_wand_size) min_average_magic_wand_size
		FROM
		(SELECT deposit_group, 
		AVG(magic_wand_size) AS average_magic_wand_size
		FROM wizzard_deposits
		GROUP BY deposit_group) AS av);

SELECT *
FROM wizzard_deposits AS e;


