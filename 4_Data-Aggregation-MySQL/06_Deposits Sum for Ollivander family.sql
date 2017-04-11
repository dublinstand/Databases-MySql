USE gringotts;

-- Select all deposit groups and its total deposit sum but only for the wizards who has their magic wand crafted by Ollivander family.
SELECT w.deposit_group, SUM(w.deposit_amount) AS total_sum
FROM wizzard_deposits AS w
WHERE w.magic_wand_creator = 'Ollivander family'
GROUP BY w.deposit_group;

SELECT *
FROM wizzard_deposits AS w;


