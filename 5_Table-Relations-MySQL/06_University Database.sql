-- Problem 6.	University Database

CREATE DATABASE university;

USE university;

CREATE TABLE majors(
major_id INT NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL
);

CREATE TABLE students(
student_id INT NOT NULL PRIMARY KEY,
student_number VARCHAR(12) NOT NULL,
student_name VARCHAR(50) NOT NULL,
major_id INT NOT NULL,
CONSTRAINT fk_students__majors FOREIGN KEY (major_id) REFERENCES majors (major_id)
); 

CREATE TABLE payments(
payment_id INT NOT NULL PRIMARY KEY,
payment_date DATE NOT NULL,
payment_amount DECIMAL(8,2) NOT NULL,
student_id INT NOT NULL,
CONSTRAINT uk_student_it UNIQUE KEY (student_id),
CONSTRAINT fk_payments_students FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE TABLE subjects(
subject_id INT NOT NULL PRIMARY KEY,
subject_name VARCHAR(50) NOT NULL
);ъг м	А	ЬА
CREATE TABLE agenda(
student_id INT NOT NULL,
subject_id INT NOT NULL,
PRIMARY KEY (student_id, subject_id),
CONSTRAINT fk_agenda_students FOREIGN KEY (student_id) REFERENCES students(student_id),
CONSTRAINT fk_agenda_subjects FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);