USE soft_uni;


SELECT *
FROM soft_uni.employees
ORDER BY salary DESC;

SELECT *
FROM soft_uni.towns
ORDER BY name ASC;

SELECT *
FROM soft_uni.departments
ORDER BY name ASC;

SELECT name 'Changed_column_name'
FROM soft_uni.towns
ORDER BY name ASC;

SELECT first_name 'First Name', last_name 'Last Name', job_title 'Job Title', salary 'Salary'
FROM soft_uni.employees
ORDER BY salary DESC;

UPDATE soft_uni.employees AS e
SET e.salary = e.salary + e.salary * 0.1;


