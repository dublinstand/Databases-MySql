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

CREATE TABLE manufacturers(
manufacturer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
established_on DATE NOT NULL
);

CREATE TABLE models(
model_id INT NOT NULL PRIMARY KEY,
name VARCHAR(50),
manufacturer_id INT NOT NULL,
CONSTRAINT fk_models_manufacturers FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(manufacturer_id)
);

INSERT INTO manufacturers(manufacturer_id, name, established_on)
VALUES (1, 'BMW', '1916-03-07'),(2, 'Tesla', '2003-03-07'),(3, 'Lada', '1966-03-07');

INSERT INTO models(model_id, name, manufacturer_id)
VALUES (101, 'X1', 1),(102, 'i6', 1),(103, 'Model S', 2),(104, 'Model X', 2),(105, 'Model 3', 2),(106, 'Nova', 3);
