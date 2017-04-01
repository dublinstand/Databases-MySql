create database test_database;

CREATE TABLE test_database.people 
(
`id` INT NOT NULL auto_increment primary key,  
`name` varchar(200) not null,
`picture` blob, 
`height` float (2), 
`weight` float (2), 
`gender` enum('m', 'f') not null,  
`birthdate` datetime not null, 
`biography` text (65635) 
);



insert into test_database.people (`id`, `name`, `picture`, `height`, `weight`, `gender`, `birthdate`, `biography`)
values ('1', 'Maria', '/home/Pictures', '1.70', '65.50', 'f', '1983-05-09', 'She is new to this position and needs some training.' );

insert into test_database.people (`id`, `name`, `picture`, `height`, `weight`, `gender`, `birthdate`, `biography`)
values('2', 'Johny', 'home/Pictures', '1.91', '85.00', 'm', '1981-01-01', 'No Biography');

insert into test_database.people (`id`, `name`, `picture`, `height`, `weight`, `gender`, `birthdate`, `biography`)
values('3', 'Asen', 'home/Pictures', '1.96', '100.00', 'm', '1981-01-01', 'No Biography');