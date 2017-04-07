USE gringotts;

-- Select the deposit group with the lowest average wand size.
SELECT w.deposit_group, AVG(w.magic_wand_size) AS longest_magic_wand
FROM wizzard_deposits AS w
GROUP BY w.deposit_group;

SELECT *
FROM wizzard_deposits AS e;
