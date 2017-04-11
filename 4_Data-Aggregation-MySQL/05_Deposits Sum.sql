USE gringotts;

-- Select all deposit groups and its total deposit sum.
SELECT w.deposit_group, SUM(w.deposit_amount) AS total_sum
FROM wizzard_deposits AS w
GROUP BY w.deposit_group;

SELECT *
FROM wizzard_deposits AS w;


