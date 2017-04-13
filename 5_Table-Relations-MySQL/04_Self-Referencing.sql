-- Create a single table as follows. Insert the data from the example above. Add primary keys and foreign keys. 
-- The foreign key should be between ManagerId and TeacherId.

USE test;

CREATE TABLE teachers(
teacher_id INT NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
manager_id INT,
CONSTRAINT fk_teachers_teachers FOREIGN KEY (manager_id) REFERENCES teachers(teacher_id)
);