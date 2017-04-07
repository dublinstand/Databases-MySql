USE gringotts;

-- For wizards in each deposit group show the longest magic wand. Rename the new column appropriately.
SELECT w.deposit_group, MAX(w.magic_wand_size) AS longest_magic_wand
FROM wizzard_deposits AS w
GROUP BY w.deposit_group;

SELECT *
FROM wizzard_deposits AS e;
