-- Active: 1685984322357@@localhost@3306@PUBLIC_LIBRARY
/*We start our project by creating a database*/
create database PUBLIC_LIBRARY;

/*After the database has been created , we now open it 
for workings*/
use PUBLIC_LIBRARY;

/*Now its the time to start creating tables*/

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

create table
    Book(
        BookID INT AUTO_INCREMENT,
        BookTitle char(100) not null,
        BookAuthor INT not null,
        Genre char(30) not null,
        CONSTRAINT PK_BookID PRIMARY KEY (BookID),
        CONSTRAINT FK_AuthorID FOREIGN KEY (BookAuthor) REFERENCES Author(AuthorID) ON UPDATE CASCADE ON DELETE CASCADE
    );

/*drop table Book;*/

create table
    Borrower(
        BorrowerID INT AUTO_INCREMENT,
        ClientID INT not null,
        BookID INT not null,
        BorrowDate date,
        CONSTRAINT PK_BorrowID PRIMARY KEY (BorrowerID),
        CONSTRAINT FK_ClientID FOREIGN KEY (ClientID) REFERENCES Client(ClientID) ON UPDATE CASCADE ON DELETE CASCADE,
        CONSTRAINT FK_BookID FOREIGN KEY (BookID) REFERENCES Book (BookID)
    );

/*drop table `Borrower`;*/

SHOW TABLES;

/*Lets start quering in data
we will start by entering data into authors table*/

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

/*Lets check to see if the data has been successfully entered*/

SELECT * FROM Author;

/* Lets move in to the second table that we will enter data*/

INSERT INTO
    Book(BookTitle, BookAuthor, Genre)
VALUES (
        'Build your database system',
        1,
        'Science'
    ), ('The red wall', 2, 'Fiction'), (
        'The perfect match',
        3,
        'Fiction'
    ), ('Digital Logic', 4, 'Science'), (
        'How to be a great lawyer',
        5,
        'Law'
    ), (
        'Manage successful negotiations',
        6,
        'Society'
    ), ('Pollution today', 7, 'Scince'), ('A gray park', 2, 'Fiction'), (
        'How to be rich in one year',
        8,
        'Humor'
    ), (
        'Their bright fate',
        9,
        'Fiction'
    ), ('Black lines', 10, 'Fictions'), (
        'History of theater',
        11,
        'Literature'
    ), (
        'Electrical transformers',
        12,
        'Science'
    ), (
        'Build your big data system',
        1,
        'Science'
    ), (
        'Right and left',
        13,
        'Children'
    ), (
        'Programming using Python',
        1,
        'Science'
    ), (
        'Computer networks',
        14,
        'Science'
    ), (
        'Performance evaluation',
        15,
        'Science'
    ), (
        'Daily exercise',
        16,
        'Well being'
    ), (
        'The silver uniform',
        17,
        'Fiction'
    ), (
        'Industrial revolution',
        18,
        'History'
    ), (
        'Green nature',
        19,
        'Well being'
    ), (
        'Perfect football',
        20,
        'Well being'
    ), (
        'The chocolate love',
        21,
        'Humor'
    ), (
        'Director and leader',
        22,
        'Society'
    ), (
        'Play football every week',
        20,
        'well being'
    ), ('Maya the bee', 13, 'Children'), (
        'Perfect rugby',
        20,
        'Well being'
    ), ('The end', 23, 'Fiction'), (
        'Computer security',
        1,
        'Science'
    ), ('Participate', 22, 'Society'), (
        'Positive figures',
        3,
        'Fiction'
    );

SELECT * FROM Book;

/* clients who registered*/

INSERT INTO Client(ClientFirstName,ClientLastName,ClientDOB,Occupation) VALUES
('Kaiden','Hill','2006','Student');

ALTER TABLE `Client` MODIFY ClientDOB YEAR NOT NULL default YEAR(CURRENT_DATE);

SELECT ClientFirstName ,(YEAR(CURRENT_DATE)) - ClientDOB AS AGE FROM `Client`;