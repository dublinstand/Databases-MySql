USE soft_uni;

-- Write a SQL query to create view v_employees_hired_after_2000 with first and last name to all employees hired after 2000 year. 
CREATE VIEW v_employees_hired_after_2000 AS
	SELECT e.first_name, e.last_name
	FROM soft_uni.employees AS e
	WHERE e.hire_date > '2000-01-01';

SELECT *
FROM soft_uni.v_employees_hired_after_2000 AS e;


