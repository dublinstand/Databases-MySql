USE diablo;

-- Find all users along with information about their email providers. 
-- Display the username and email provider. Sort the results by email provider alphabetically, then by username. 
SELECT u.user_name AS Username, SUBSTRING(u.email, LOCATE('@',u.email) + 1, LENGTH(u.email)) AS email_provider
FROM users AS u
ORDER BY u.email, u.user_name;


SELECT *
FROM ;