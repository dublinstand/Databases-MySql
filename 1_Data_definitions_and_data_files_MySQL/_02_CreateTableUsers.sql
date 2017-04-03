CREATE TABLE test_database.users
(
`id` int NOT NULL auto_increment,
`username` varchar(30) NOT NULL,
`password` varchar(26) NOT NULL,
`profile_picture` varbinary(900),
`last_login_time` date,
`is_deleted` tinyint,
unique `pk_id` (`id`)
);


alter table test_database.users
add primary key (`id`); 

INSERT INTO test_database.users (id, username, password,  profile_picture, last_login_time, is_deleted)
VALUES ('1', 'Asen', 'password12345', null, '2014-12-26', '0');

INSERT INTO test_database.users (username, password,  profile_picture, last_login_time, is_deleted)
VALUES ('Ksyush', '4psdfgsdf', null, '2016-12-26', '1'), ( 'Yan', 'asdgfsd234234', null, '2017-12-26', '0');

ALTER TABLE test_database.users
DROP INDEX `id`;

ALTER TABLE test_database.users CHANGE COLUMN `id` `id` INT(11) NOT NULL;

ALTER TABLE `users`
	DROP INDEX `pk_id`;

ALTER TABLE test_database.users
ADD PRIMARY KEY (`id`,`username`);

ALTER TABLE test_database.users
ALTER `last_login_time` SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE test_database.users
MODIFY COLUMN `last_login_time` DATE DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE users
DROP PRIMARY KEY;

ALTER TABLE users
ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
ADD UNIQUE INDEX `unique_username` (`username`);


