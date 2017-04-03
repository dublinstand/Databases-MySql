CREATE DATABASE movies;

SET @@auto_increment_increment=1;
SET @@auto_increment_offset=1;

USE movies;

CREATE TABLE movies.directors
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
director_name VARCHAR(50) NOT NULL,
notes VARCHAR(1000),
UNIQUE KEY `uk_director_name`(`director_name`),
UNIQUE KEY uk_id (id)
);

INSERT INTO movies.directors (director_name, notes)
VALUES ('Ridley Scott', 'Great director'), ('Lucas Arts', NULL), ('Mel Gibson','Actor/Director'), ('Johny Bravo', 'Good'), ('Geroge Lucas', NULL);

CREATE TABLE movies.genres
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
genre_name VARCHAR(50) NOT NULL,
notes VARCHAR(100),
UNIQUE KEY `uk_genre_name`(genre_name),
UNIQUE KEY uk_id (id)
);

INSERT INTO movies.genres (genre_name, notes)
VALUES ('science-fiction','Movies for thingking'), ('comedy','Moveis for joy'),('horror','not good for your sub consience'),('animations','suitable for children, depending on the content'),('documentaries',null);

CREATE TABLE movies.category_names
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(50) NOT NULL,
notes VARCHAR (100),
UNIQUE KEY `uk_category_name` (category_name),
UNIQUE KEY pk_id (id)
);

INSERT INTO movies.category_names(category_name, notes)
VALUES ('category1', null), ('category2', null), ('category3', null), ('category4', null), ('category5', null);

CREATE TABLE movies.movies
(
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`title` VARCHAR(50) NOT NULL,
`director_id` INT NOT NULL,
copyright_year DATE NOT NULL,
`length` VARCHAR(50) NOT NULL,
genre_id INT NOT NULL,
category_id INT NOT NULL,
rating INT,
notes VARCHAR(50),
UNIQUE KEY PK_id (id),
UNIQUE KEY `uk_title` (`title`),
CONSTRAINT `FK_director_id` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`),
CONSTRAINT `FK_category_id` FOREIGN KEY (`category_id`) REFERENCES `category_names` (`id`),
CONSTRAINT `FK_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`)
);

INSERT INTO movies.movies (title, director_id, copyright_year, `length`, genre_id, category_id, rating, notes)
VALUES ( 'The Good, the Bamoviesd and the Ugly', '1', '1970-01-01','2 hours', '3', '4', '10','Good'),
('Brave Heart', '2', '1996-04-04','3 hours', '2','2','10', 'Great');

