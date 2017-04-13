-- Create two tables as follows. Use appropriate data types.
-- persons
-- person_id	first_name	salary	passport_id
-- 1  	Roberto                                            	43300.00	102
-- 2	Tom	56100.00	103
-- 3	Yana	60200.00	101
-- passports
-- passport	passport_number
-- 101	N34FG21B
-- 102	K65LO4R7
-- 103	ZE657QP2
-- Insert the data from the example above.
-- Alter table persons and make person_id a primary key. Create a foreign key between persons and passports by using passport_id column.

CREATE DATABASE test;

USE test;

SET @@auto_increment_increment=1;
SET @@auto_increment_offset=1;

-- in order to have a one-to-one relation we need to have the row passport_id as Unique key

CREATE TABLE persons(
person_id INT NOT NULL,
first_name VARCHAR(50) NOT NULL,
salary FLOAT NOT NULL,
passport_id INT,
UNIQUE KEY uk_passport_id(passport_id)
);

CREATE TABLE passports(
passport INT NOT NULL PRIMARY KEY,
passport_number VARCHAR(50) NOT NULL,
UNIQUE KEY uk_passport_number(passport_number)
);

INSERT INTO persons(person_id, first_name, salary, passport_id)
VALUES (1, 'Roberto', 43300.00, 102), (2, 'Tom', 56100.00, 103), (3, 'Yana', 60200.00, 101);

INSERT INTO passports(passport, passport_number)
VALUES (101, 'N34FG21B'), (102, 'K65LO4R7'),(103, 'ZE657QP2');

ALTER TABLE persons
ADD PRIMARY KEY pk_persons_id (person_id);

ALTER TABLE persons
ADD CONSTRAINT fk_persons_passports FOREIGN KEY (passport_id) REFERENCES passports(passport);

