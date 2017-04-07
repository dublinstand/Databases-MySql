USE diablo;

-- Find all users along with information about their email providers. 
-- Display the username and email provider. Sort the results by email provider alphabetically, then by username. 
SELECT u.user_name AS Username, u.ip_address AS `IP Address`
FROM users AS u
WHERE u.ip_address LIKE '___.1%.%.___'
ORDER BY u.user_name;


SELECT *
FROM users;