USE gringotts;

-- Create a query that selects:
-- •	Deposit group
-- •	Magic wand creator
-- •	Minimum deposit charge for each group
-- Select the data in ascending order by MagicWandCreator and DepositGroup.

SELECT w.deposit_group, w.magic_wand_creator, MIN(w.deposit_charge) AS min_deposit_charge
FROM wizzard_deposits AS w 
GROUP BY w.deposit_group
ORDER BY w.magic_wand_creator, min_deposit_charge;

SELECT *
FROM wizzard_deposits AS w;
