-- Active: 1685984322357@@localhost@3306@PUBLIC_LIBRARY

create table
    Author(
        AuthorID INT AUTO_INCREMENT,
        AuthorFirstName char(30) not null,
        AuthorLastName char(30) not null,
        AuthorNationality char(20) not null default 'Unknown',
        CONSTRAINT PK_AuthorID PRIMARY KEY (AuthorID)
    );

create table
    Client(
        ClientID INT AUTO_INCREMENT,
        ClientFirstName char(50) not null,
        ClientLastName char(60) not null,
        ClientDOB DATE not null,
        Occupation char(100) not null default 'Unknown',
        CONSTRAINT PK_ClientID PRIMARY KEY (ClientID)
    );

SHOW TABLES;

SELECT * FROM `Author`;

INSERT INTO Author
VALUES (1, 'Sofia', 'Smith', 'Canada'), (2, 'Maria', 'Brown', 'Brazil'), (3, 'Elena', 'Martin', 'Mexico'), (4, 'Zoe', 'Roy', 'France'), (
        5,
        'Sebastian',
        'Lavoie',
        'Canada'
    ), (6, 'Dylan', 'Garcia', 'Spain'), (7, 'Ian', 'Cruz', 'Mexico'), (8, 'Lucas', 'Smith', 'USA'), (9, 'Fabian', 'Wilson', 'USA'), (10, 'Liam', 'Taylor', 'Canada'), (
        11,
        'William',
        'Thomas',
        'Great Britain'
    ), (12, 'Logan', 'Moore', 'Canada'), (
        13,
        'Oliver',
        'Martin',
        'France'
    ), (
        14,
        'Alysha',
        'Thompson',
        'Canada'
    ), (15, 'Isabelle', 'Lee', 'Canada'), (16, 'Emily', 'Clark', 'USA'), (17, 'John', 'Young', 'China'), (18, 'David', 'Wright', 'Canada'), (19, 'Thomas', 'Scott', 'Canada'), (20, 'Helena', 'Adams', 'Canada'), (21, 'Sofia', 'Carter', 'USA'), (22, 'Liam', 'Parker', 'Canada'), (23, 'Emily', 'Murphy', 'USA');