USE soft_uni;

SELECT *
FROM soft_uni.departments;

SELECT name AS 'Name of department'
FROM soft_uni.departments;

SELECT first_name, last_name, salary
FROM soft_uni.employees;

SELECT first_name, middle_name, last_name
FROM soft_uni.employees;

-- Write a SQL query to find the email address of each employee. (by his first and last name).
-- Consider that the email domain is softuni.bg. Emails should look like “John.Doe@softuni.bg". The produced column should be named "Full Email Address".
SELECT CONCAT(first_name,'.',last_name,'@softuni.bg') AS Full_email_address
FROM soft_uni.employees;

SELECT DISTINCT salary
FROM soft_uni.employees
ORDER BY salary;

SELECT *
FROM soft_uni.employees;

SELECT e.employee_id AS id, 
e.first_name AS `First Name`, 
e.last_name AS `Last Name`, 
e.middle_name AS `Middle Name`, 
e.job_title AS `Job Title`, 
e.department_id AS `Dept ID`,
e.manager_id AS `Mngr ID`,
e.salary,
e.address_id
FROM  soft_uni.employees AS e
WHERE e.job_title = 'Sales Representative';

-- Write a SQL query to find the full name of all employees whose salary is 25000, 14000, 12500 or 23600. 
-- Full Name is combination of first, middle and last name (separated with single space) and they should be in one column called “Full Name”. 
SELECT CONCAT(e.first_name, ' ', e.middle_name, ' ', e.last_name) AS 'Full Name'
FROM soft_uni.employees AS e
WHERE e.salary IN (25000, 14000, 12500, 23600);

-- Find All Employees Without Manager
SELECT e.first_name, e.last_name
FROM soft_uni.employees AS e
WHERE e.manager_id IS NULL;

-- Write a SQL query to find the first name, last name and job title of all employees whose salary is in the range [20000, 30000].
SELECT e.first_name, e.last_name, e.job_title
FROM soft_uni.employees AS e
WHERE salary BETWEEN 20000 AND 30000;

-- Find All Employees with salary More Than 50000
SELECT e.first_name, e.last_name, e.salary
FROM soft_uni.employees AS e
WHERE salary > 50000;


-- Write SQL query to find first and last names about 5 best paid Employees ordered descending by their salary. 
SELECT e.first_name,e.last_name
FROM soft_uni.employees AS e
ORDER BY e.salary DESC
LIMIT 5;

-- Write a SQL query to find the first and last names of all employees whose department ID is different from 4. 
SELECT e.first_name,e.last_name
FROM soft_uni.employees AS e
WHERE e.department_id <> 4;

-- Write a SQL query to sort all records in the Employees table by the following criteria:
-- •	First by salary in decreasing order
-- •	Then by first name alphabetically
-- •	Then by last name descending
-- •	Then by middle name alphabetically
SELECT * 
FROM soft_uni.employees AS e
ORDER BY e.salary DESC, e.first_name ASC, e.last_name DESC, e.middle_name ASC;


-- Write a SQL query to create a view v_employees_salaries with first name, last name and salary for each employee. 
CREATE VIEW v_employees_with_salaries AS
SELECT e.first_name, e.last_name, e.salary
FROM soft_uni.employees AS e;

SELECT *
FROM soft_uni.v_employees_with_salaries;


-- Write a SQL query to create view v_employees_job_titles with full employee name and job title. When middle name is NULL replace it with empty string (‘’). 
CREATE VIEW v_employees_job_titles AS
SELECT CONCAT(e.first_name, ' ', IFNULL(e.middle_name,''),' ', e.last_name) AS full_name, e.job_title
FROM soft_uni.employees AS e;

SELECT *
FROM soft_uni.v_employees_job_titles;


-- Write a SQL query to find all distinct job titles. 
SELECT DISTINCT e.job_title
FROM soft_uni.employees AS e
ORDER BY e.job_title ASC;


-- Write a SQL query to find first 10 started projects. Select all information about them and sort them by start date, then by name. 
SELECT *
FROM soft_uni.projects AS e
ORDER BY e.start_date ASC, e.name
LIMIT 10;


-- Write a SQL query to find last 7 hired employees. Select their first, last name and their hire date. 
SELECT e.first_name, e.last_name, e.hire_date
FROM soft_uni.employees AS e
ORDER BY e.hire_date DESC
LIMIT 7;


-- Write a SQL query to increase salaries of all employees that are in the Engineering, Tool Design,
-- Marketing or Information Services department by 12%. Then select Salaries column from the Employees table.
-- After that exercise restore your database to revert those changes. 
SELECT * 
FROM soft_uni.employees
where department_id = 1;

SELECT * 
FROM soft_uni.departments;

UPDATE soft_uni.employees AS e, soft_uni.departments AS d
SET e.salary = e.salary * 1.12
WHERE d.department_id = e.department_id
AND d.name IN ('Engineering', 'Tool Design', 'Marketing', 'Information Services');



USE geography;

-- Display all mountain peaks in alphabetical order. 
SELECT p.peak_name
FROM geography.peaks AS p
ORDER BY p.peak_name ASC;

