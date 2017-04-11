USE gringotts;

-- Mr. Bodrog definitely likes his werewolves more than you. This is your last chance to survive! 
-- Give him some data to play his favorite game Rich Wizard, Poor Wizard. The rules are simple:
-- You compare the deposits of every wizard with the wizard after him. If a wizard is the last one in the database, simply ignore it.
--  At the end you have to sum the difference between the deposits.


SELECT SUM(XX.DIFF) AS sum_difference
FROM (SELECT deposit_amount - (SELECT deposit_amount FROM wizzard_deposits WHERE Id = g.Id + 1) 
AS DIFF FROM wizzard_deposits g) AS XX;



SELECT *
FROM wizzard_deposits AS w;


