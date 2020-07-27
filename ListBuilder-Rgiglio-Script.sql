drop database if exists ListBuilderDB;
create database ListBuilderDB;
use ListBuilderDB;

create table images(
	`avatarID` int unsigned not null auto_increment PRIMARY KEY,
    `fileName` nvarchar(255) not null,
    `type` nvarchar(50) not null,
    `data` longblob
);

explain images;

create table users(
	`userID` int unsigned not null auto_increment primary key,
    `userName` nvarchar(30) not null,
    `pass` char(60) not null,
    `hash` char(60) not null,
    `avatarID` int unsigned,
    `created` datetime default current_timestamp,
    
    CONSTRAINT FOREIGN KEY `avatar_fk`(`avatarID`) REFERENCES `images`(`avatarID`)
		ON DELETE CASCADE
);

explain users;

  
create table lists(
	`listID` int not null auto_increment primary key,
    `listName` nvarchar(100) not null,
    `userID` int unsigned not null,
    `created` datetime default current_timestamp,
    
    constraint foreign key `user_fk`(`userID`) references `users`(`userID`)
		on delete cascade
);

explain lists;

create table entry(
	`entryID` int not null auto_increment primary key,
    `entryName` nvarchar(50) not null,
    `cost` int not null,
    `notes` text,
    `listID` int not null,
    
    constraint foreign key `list_fk`(`listID`) references `lists`(`listID`)
		on delete cascade
);

explain entry;

SELECT * FROM users;
SELECT * FROM lists ORDER BY userID;
SELECT * FROM entry;
SELECT * FROM images;

#SELECT listID AS `id`, listName AS `Name` FROM lists
#INNER JOIN users ON lists.userID=users.userID;

#SELECT listID AS `id`, listName AS `Name`, lists.created AS `Created` FROM lists
#INNER JOIN users ON lists.userID=users.userID AND lists.userID=4
#ORDER BY lists.listID ASC;

#SELECT l.listName AS Name, e.entryID AS eID, e.entryName AS Item, e.cost AS Cost, e.notes AS Notes FROM lists AS l
#INNER JOIN entry AS e ON l.listID=e.listID
#WHERE l.listID = 17;

#SELECT entryID AS id, entryName AS name, cost AS Cost, notes AS Notes FROM entry as e
#INNER JOIN lists AS l ON e.listID=l.listID WHERE l.listID=17
#ORDER BY entryID ASC;