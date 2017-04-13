-- Create two tables as follows. Use appropriate data types.
-- manufacturers
-- manufacturer_id	name	established_on
-- 1  	BMW                                            	07/03/1916
-- 2	Tesla	01/01/2003
-- 3	Lada	01/05/1966
-- models
-- model_id	name	manufacturer_id
-- 101	X1	1
-- 102	i6	1
-- 103	Model S	2
-- 104	Model X	2
-- 105	Model 3	2
-- 106	Nova	3
-- 
-- 
-- Insert the data from the example above. Add primary keys and foreign keys.

USE test;

SET @@auto_increment_increment=1;
SET @@auto_increment_offset=1;

CREATE TABLE students(
student_id INT NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL
);

CREATE TABLE exams(
exam_id INT NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL
);

INSERT INTO students (student_id, name)
VALUES (1, 'Mila'), (2, 'Toni'), (3, 'Mila');

INSERT INTO exams (exam_id, name)
VALUES (101, 'Spring MVC'), (102, ' Neo4j'), (103, 'Oracle11g');

CREATE TABLE students_exams(
student_id INT NOT NULL,
exam_id INT NOT NULL,
CONSTRAINT pk_primary_key PRIMARY KEY (student_id, exam_id),
CONSTRAINT fk_students_exams_students FOREIGN KEY (student_id) REFERENCES students(student_id),
CONSTRAINT fk_students_exams_exam_id FOREIGN KEY (exam_id) REFERENCES exams(exam_id)
);

INSERT INTO students_exams(student_id, exam_id)
VALUES (1, 101), (1, 102), (2, 101), (2, 103), (2, 102), (3, 103);


