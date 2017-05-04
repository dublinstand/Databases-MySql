SELECT *
FROM employees AS e
INNER JOIN employees_projects AS ep
	ON e.employee_id = ep.employee_id
INNER JOIN projects AS p
	ON p.project_id = ep.project_id
INNER JOIN departments AS d
	ON d.department_id = e.department_id
INNER JOIN addresses AS a
	ON a.address_id = e.address_id
INNER JOIN towns AS t
	ON t.town_id = a.town_id
WHERE e.employee_id = 294;

SELECT * FROM towns AS t WHERE LENGTH(t.name) > 11

SELECT * from employees AS e WHERE e.salary > 50000;

SELECT *
FROM employees AS e
INNER JOIN departments AS d
	ON e.department_id = d.department_id
WHERE d.name = 'Research and Development';

SELECT * FROM towns AS t WHERE t.name = 'Burgas';

SELECT * from employees AS e WHERE e.last_name = 'Nakov';

SELECT * FROM employees_projects;

SELECT * FROM projects;

SELECT e.*, ep.project_id
FROM employees AS e
INNER JOIN employees_projects AS ep
	ON e.employee_id = ep.employee_id
INNER JOIN projects AS p
	ON ep.project_id = p.project_id
WHERE p.start_date > '2001-01-01';

SELECT a.address_text, t.name, COUNT(e.address_id) AS counts
FROM addresses AS a
JOIN towns AS t
	ON a.town_id = t.town_id
JOIN employees AS e
	ON a.address_id = e.address_id
GROUP BY e.address_id
ORDER BY counts DESC
LIMIT 10;


SELECT e.*, d.name
FROM employees AS e
JOIN departments AS d
	ON e.department_id = d.department_id
WHERE d.name IN ('Engineering', 'Marketing', 'Tool Design', 'Information Services');

SELECT * 
FROM towns AS t
WHERE t.name = 'Sofia';

SELECT *
FROM addresses AS a
WHERE a.town_id = 32;

SELECT *
FROM employees AS e
WHERE e.first_name LIKE 'SA%';

SELECT DISTINCT d.name, MAX(e.salary) AS max_salary
FROM employees AS e
JOIN departments AS d
	ON e.department_id = d.department_id
GROUP BY e.department_id
HAVING MAX(e.salary) NOT BETWEEN 30000 and 70000
ORDER BY max_salary;

