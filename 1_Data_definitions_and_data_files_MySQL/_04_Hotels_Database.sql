CREATE DATABASE hotels;

SET @@auto_increment_increment=1;
SET @@auto_increment_offset=1;

CREATE TABLE hotels.employees(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
title VARCHAR(10),
notes VARCHAR(100),
UNIQUE KEY PK_id (id)
);

INSERT INTO hotels.employees (first_name, last_name, title)
VALUES ('Johny', 'Bravo', 'Mr.'), ('Maria', 'Stoyanova', 'Mrs'), ('Yancho', 'Stanchev', 'Mr.');

USE hotels;

CREATE TABLE customers(
account_number INT(40) NOT NULL PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
phone_number INT(20) NOT NULL,
emergency_name VARCHAR(20),
emergency_number INT(40),
notes VARCHAR(20),
UNIQUE KEY PK_account_number (account_number)
);

INSERT INTO customers(account_number, first_name, last_name, phone_number)
VALUES ('1241231', 'Cvetanka', 'Nikolova', '0201231123'), ('534532', 'Deyan','Ahilov','91231231');


CREATE TABLE room_status(
room_status VARCHAR(30) NOT NULL PRIMARY KEY,
notes VARCHAR(100),
UNIQUE KEY PK_room_status (room_status)
);

INSERT INTO room_status (room_status, notes)
VALUES ('free', 'the room is ready to rent'), ('taken', 'there are people in the room'), ('dirty','the room is to be cleaned');

CREATE TABLE room_types(
room_type VARCHAR(30) NOT NULL PRIMARY KEY,
notes VARCHAR(100),
UNIQUE KEY PK_room_type (room_type)
);

INSERT INTO room_types (room_type, notes)
VALUES ('double', 'big room'), ('luxury', 'expensive room'), ('one bed', 'one bed room');

CREATE TABLE bed_types(
bed_type VARCHAR(30) NOT NULL PRIMARY KEY,
notes VARCHAR(100),
UNIQUE KEY PK_bed_type (bed_type)
);

INSERT INTO bed_types(bed_type)
VALUES ('single bed'), ('double bed'), ('family bed');

CREATE TABLE rooms(
room_number INT NOT NULL PRIMARY KEY,
room_type VARCHAR(30) NOT NULL,
bed_type VARCHAR(30) NOT NULL,
rate INT NOT NULL,
room_status VARCHAR(30) NOT NULL,
notes VARCHAR(100),
UNIQUE KEY PK_room_number (room_number),
CONSTRAINT fk_room_type FOREIGN KEY (room_type) REFERENCES room_types (room_type),
CONSTRAINT fk_bed_type FOREIGN KEY (bed_type) REFERENCES bed_types (bed_type),
CONSTRAINT fk_room_status FOREIGN KEY (room_status) REFERENCES room_status (room_status)
);

INSERT INTO rooms (room_number, room_type, bed_type, rate, room_status)
VALUES ('88', 'double', 'double bed', '100', 'free'), ('11', 'luxury', 'family bed', '150', 'taken'), ('33', 'one bed', 'single bed', '77', 'free');

CREATE TABLE payments(
id INT(88) NOT NULL PRIMARY KEY AUTO_INCREMENT,
employee_id INT NOT NULL,
payment_date DATE NOT NULL,
account_number INT(40) NOT NULL,
first_date_occupied DATE NOT NULL,
last_date_occupied DATE NOT NULL,
total_days INT NOT NULL,
payment_total INT NOT NULL,
notes VARCHAR(100),
UNIQUE KEY PK_id (id),
CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES employees (id),
CONSTRAINT fk_account_number FOREIGN KEY (account_number) REFERENCES customers (account_number)
);

INSERT INTO payments(employee_id, payment_date, account_number, first_date_occupied, last_date_occupied, total_days, payment_total)
VALUES ('1', '2012-01-04', '1241231', '2012-01-01', '2012-01-03', '2', '200');

CREATE TABLE occupancies(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
employee_id INT NOT NULL,
date_occupied DATE NOT NULL,
account_number INT(40) NOT NULL,
room_number INT NOT NULL,
rate_applied INT NOT NULL,
phone_charges INT,
notes VARCHAR(100),
UNIQUE KEY PK_id (id)
);

ALTER TABLE occupancies
ADD CONSTRAINT fk_employee_id_2 FOREIGN KEY (employee_id) REFERENCES employees (id);

ALTER TABLE occupancies
ADD CONSTRAINT fk_account_number_2 FOREIGN KEY (account_number) REFERENCES customers (account_number);

ALTER TABLE occupancies
ADD CONSTRAINT fk_room_number FOREIGN KEY (room_number) REFERENCES rooms (room_number);

INSERT INTO occupancies(employee_id, date_occupied, account_number, room_number, rate_applied)
VALUES ('1', '2016-04-20', '534532', '88', '100'), ('2','2016-04-21','534532', '33', '77');