CREATE DATABASE soft_uni;

USE soft_uni;

SET @@auto_increment_increment=1;
SET @@auto_increment_offset=1;

CREATE TABLE towns(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
UNIQUE INDEX pk_id (id),
UNIQUE INDEX uk_name (name)
);

CREATE TABLE addresses(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
address_text VARCHAR(50) NOT NULL,
town_id INT NOT NULL,
UNIQUE INDEX pk_id (id),
UNIQUE INDEX uk_address_text_and_town_id (address_text, town_id),
CONSTRAINT fk_town_id FOREIGN KEY (town_id) REFERENCES towns (id)
);

CREATE TABLE departments(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
UNIQUE INDEX pk_id (id),
UNIQUE INDEX uk_name (name)
);

CREATE TABLE employees(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(20) NOT NULL,
middle_name VARCHAR(20),
last_name VARCHAR(20) NOT NULL,
job_title VARCHAR(50) NOT NULL,
department_id INT NOT NULL,
hire_date DATE NOT NULL,
salary FLOAT NOT NULL,
address_id INT,
UNIQUE KEY pk_id (id),
KEY cl_first_name (first_name),
CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES departments (id),
CONSTRAINT fk_address_id FOREIGN KEY (address_id) REFERENCES addresses (id)
);

INSERT INTO towns (name)
VALUES 
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas');

INSERT INTO departments (name)
VALUES
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance');

INSERT INTO employees (first_name, middle_name, last_name, job_title, department_id, hire_date, salary)
VALUES
('Ivan','Ivanov','Ivanov','.NET Developer','4','2013-01-02','3500.00'),
('Petar','Petrov','Petrov','Senior Engineer','1','2013-01-02','4000.00'),
('Maria','Petrova','Ivanova','Intern','5','2013-01-26','525.25'),
('Georgi','Teziev','Ivanov','CEO','2','2013-01-29','3000.00'),
('Peter','Pan','Pan','Intern','3','2013-01-11','599.88');