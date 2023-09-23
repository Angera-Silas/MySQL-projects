-- Active: 1685984322357@@localhost@3306@PUBLIC_LIBRARY
/*We start our project by creating a database*/
create database PUBLIC_LIBRARY;
/*After the database has been created , we now open it 
 for workings*/
use PUBLIC_LIBRARY;
/*Now its the time to start creating tables*/
create table Author(
    AuthorID INT AUTO_INCREMENT,
    AuthorFirstName char(30) not null,
    AuthorLastName char(30) not null,
    AuthorNationality char(20) not null default 'Unknown',
    CONSTRAINT PK_AuthorID PRIMARY KEY (AuthorID)
);
create table Client(
    ClientID INT AUTO_INCREMENT,
    ClientFirstName char(50) not null,
    ClientLastName char(60) not null,
    ClientDOB DATE not null,
    Occupation char(100) not null default 'Unknown',
    CONSTRAINT PK_ClientID PRIMARY KEY (ClientID)
)/*drop table Client;
create table Book(
    BookID INT AUTO_INCREMENT,
    BookTitle char(100) not null,
    BookAuthor INT not null,
    Genre char(30) not null,
    CONSTRAINT PK_BookID PRIMARY KEY (BookID),
    CONSTRAINT FK_AuthorID FOREIGN KEY (BookAuthor) REFERENCES Author(AuthorID) ON UPDATE CASCADE ON DELETE CASCADE
);
/*drop table Book;*/
create table Borrower(
    BorrowerID INT AUTO_INCREMENT,
    ClientID INT not null,
    BookID INT not null,
    BorrowDate date,
    CONSTRAINT PK_BorrowID PRIMARY KEY (BorrowerID),
    CONSTRAINT FK_ClientID FOREIGN KEY (ClientID) REFERENCES Client(ClientID) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK_BookID FOREIGN KEY (BookID) REFERENCES Book (BookID)
);
drop table `Borrower`;
SHOW TABLES;
/*Lets start quering in data
 we will start by entering data into authors table*/
INSERT INTO Author
VALUES (1, 'Sofia', 'Smith', 'Canada'),
    (2, 'Maria', 'Brown', 'Brazil'),
    (3, 'Elena', 'Martin', 'Mexico'),
    (4, 'Zoe', 'Roy', 'France'),
    (
        5,
        'Sebastian',
        'Lavoie',
        'Canada'
    ),
    (6, 'Dylan', 'Garcia', 'Spain'),
    (7, 'Ian', 'Cruz', 'Mexico'),
    (8, 'Lucas', 'Smith', 'USA'),
    (9, 'Fabian', 'Wilson', 'USA'),
    (10, 'Liam', 'Taylor', 'Canada'),
    (
        11,
        'William',
        'Thomas',
        'Great Britain'
    ),
    (12, 'Logan', 'Moore', 'Canada'),
    (
        13,
        'Oliver',
        'Martin',
        'France'
    ),
    (
        14,
        'Alysha',
        'Thompson',
        'Canada'
    ),
    (15, 'Isabelle', 'Lee', 'Canada'),
    (16, 'Emily', 'Clark', 'USA'),
    (17, 'John', 'Young', 'China'),
    (18, 'David', 'Wright', 'Canada'),
    (19, 'Thomas', 'Scott', 'Canada'),
    (20, 'Helena', 'Adams', 'Canada'),
    (21, 'Sofia', 'Carter', 'USA'),
    (22, 'Liam', 'Parker', 'Canada'),
    (23, 'Emily', 'Murphy', 'USA');
/*Lets check to see if the data has been successfully entered*/
SELECT *
FROM Author;
/* Lets move in to the second table that we will enter data*/
INSERT INTO Book(BookTitle, BookAuthor, Genre)
VALUES (
        'Build your database system',
        1,
        'Science'
    ),
    ('The red wall', 2, 'Fiction'),
    (
        'The perfect match',
        3,
        'Fiction'
    ),
    ('Digital Logic', 4, 'Science'),
    (
        'How to be a great lawyer',
        5,
        'Law'
    ),
    (
        'Manage successful negotiations',
        6,
        'Society'
    ),
    ('Pollution today', 7, 'Scince'),
    ('A gray park', 2, 'Fiction'),
    (
        'How to be rich in one year',
        8,
        'Humor'
    ),
    (
        'Their bright fate',
        9,
        'Fiction'
    ),
    ('Black lines', 10, 'Fictions'),
    (
        'History of theater',
        11,
        'Literature'
    ),
    (
        'Electrical transformers',
        12,
        'Science'
    ),
    (
        'Build your big data system',
        1,
        'Science'
    ),
    (
        'Right and left',
        13,
        'Children'
    ),
    (
        'Programming using Python',
        1,
        'Science'
    ),
    (
        'Computer networks',
        14,
        'Science'
    ),
    (
        'Performance evaluation',
        15,
        'Science'
    ),
    (
        'Daily exercise',
        16,
        'Well being'
    ),
    (
        'The silver uniform',
        17,
        'Fiction'
    ),
    (
        'Industrial revolution',
        18,
        'History'
    ),
    (
        'Green nature',
        19,
        'Well being'
    ),
    (
        'Perfect football',
        20,
        'Well being'
    ),
    (
        'The chocolate love',
        21,
        'Humor'
    ),
    (
        'Director and leader',
        22,
        'Society'
    ),
    (
        'Play football every week',
        20,
        'well being'
    ),
    ('Maya the bee', 13, 'Children'),
    (
        'Perfect rugby',
        20,
        'Well being'
    ),
    ('The end', 23, 'Fiction'),
    (
        'Computer security',
        1,
        'Science'
    ),
    ('Participate', 22, 'Society'),
    (
        'Positive figures',
        3,
        'Fiction'
    );
SELECT *
FROM Book;
/* clients who registered*/
INSERT INTO Client(
        ClientFirstName,
        ClientLastName,
        ClientDOB,
        Occupation
    )
VALUES (
        'Kaiden',
        'Hill',
        '2006',
        'Student'
    );
/*I tried using datatype date on the column ClientDOB but the SERVER
 brought out an error and so i had to modify it to date*/
ALTER TABLE `Client`
MODIFY ClientDOB YEAR NOT NULL;
/*To display the age of the client use the syntax below*/
SELECT ClientFirstName,
    ClientLastName,
    Occupation,
    (YEAR(CURRENT_DATE)) - ClientDOB AS AGE
FROM `Client`;
INSERT INTO Client(
        ClientFirstName,
        ClientLastName,
        ClientDOB,
        Occupation
    )
VALUES (
        'Kaiden',
        'Hill',
        '2006',
        'Student'
    ),
    (
        'Alina',
        'Morton',
        '2010',
        'Student'
    ),
    (
        'Fania',
        'Brooks',
        '1983',
        'Food Scientist'
    ),
    (
        'Courtney',
        'Jensen',
        '2006',
        'Student'
    ),
    (
        'Brittany',
        'Hill',
        '1983',
        'Firefighter'
    ),
    (
        'Max',
        'Rogers',
        '2005',
        'Student'
    ),
    (
        'Margaret',
        'McCarthy',
        '1981',
        'School Psychologist'
    ),
    (
        'Julie',
        'McCarthy',
        '1973',
        'Professor'
    ),
    (
        'Ken',
        'McCarthy',
        '1974',
        'Securities Clerk'
    ),
    (
        'Britany',
        'O`Quinn',
        '1974',
        'Violinist'
    ),
    (
        'Conner',
        'Gardner',
        '1998',
        'Licensed Massage Therapist'
    ),
    (
        'Mya',
        'Austin',
        '1960',
        'Parquet Floor Layer'
    ),
    (
        'Thierry',
        'Rogers',
        '2004',
        'Student'
    ),
    (
        'Eloise',
        'Rogers',
        '1984',
        'Computer Security Manager'
    ),
    (
        'Gerad',
        'Jackson',
        '1979',
        'Oil Exploration Engineer'
    ),
    (
        'Randy',
        'Day',
        '1986',
        'Aircraft Electrician'
    ),
    (
        'Jodie',
        'Page',
        '1990',
        'Manufacturing Director'
    ),
    (
        'Coral',
        'Rice',
        '1996',
        'Window Washer'
    ),
    (
        'Ayman',
        'Autin',
        '2002',
        'Student'
    ),
    (
        'Jaxson',
        'Autin',
        '1999',
        'Repair Worker'
    ),
    (
        'Joel',
        'Austin',
        '1973',
        'Police Officer'
    ),
    (
        'Alina',
        'Austin',
        '2010',
        'Student'
    ),
    (
        'Elin',
        'Austin',
        '1962',
        'Payroll Clerk'
    ),
    (
        'Ophlia',
        'Wolf',
        '2004',
        'Student'
    ),
    (
        'Eliot',
        'McGuire',
        '1967',
        'Dentist'
    ),
    (
        'Peter',
        'McKinney',
        '1968',
        'Professor'
    ),
    (
        'Annabella',
        'Henry',
        '1974',
        'Nurse'
    ),
    (
        'Anastasia',
        'Baker',
        '2001',
        'Student'
    ),
    (
        'Tyler',
        'Baker',
        '1984',
        'Police Officer'
    ),
    (
        'Lilian',
        'Ross',
        '1983',
        'Insuarance Agent'
    ),
    (
        'Thiery',
        'Arnold',
        '1975',
        'Bus Driver'
    ),
    (
        'Angelina',
        'Rowe',
        '1979',
        'Firefighter'
    ),
    (
        'Marcia',
        'Rowe',
        '1974',
        'Health Educator'
    ),
    (
        'Martin',
        'Rowe',
        '1976',
        'Ship Engineer'
    ),
    (
        'Adeline',
        'Rowe',
        '2005',
        'Student'
    ),
    (
        'Colette',
        'Rowe',
        '1963',
        'Professor'
    ),
    (
        'Diane',
        'Clark',
        '1975',
        'Payroll Clerk'
    ),
    (
        'Caroline',
        'Clark',
        '1960',
        'Dentist'
    ),
    (
        'Dalton',
        'Clayton',
        '1982',
        'Police Officer'
    ),
    (
        'Steve',
        'Clayton',
        '1990',
        'Bus Driver'
    ),
    (
        'Melanine',
        'Clayton',
        '1987',
        'Computer Engineer'
    ),
    (
        'Alana',
        'Wilson',
        '2007',
        'Student'
    ),
    (
        'Carson',
        'Bryne',
        '1995',
        'Food Sientist'
    ),
    (
        'Conrad',
        'Bryne',
        '2007',
        'Student'
    ),
    (
        'Ryan',
        'Porter',
        '2008',
        'Student'
    ),
    (
        'Elin',
        'Porter',
        '1978',
        'Computer Programming'
    ),
    (
        'Tyler',
        'Harvey',
        '2007',
        'Student'
    ),
    (
        'Arya',
        'Harvey',
        '2008',
        'Student'
    ),
    (
        'Serena',
        'Harvey',
        '1978',
        'School Teacher'
    ),
    (
        'Lilly',
        'Franklin',
        '1976',
        'Doctor'
    ),
    (
        'Mai',
        'Franklin',
        '1994',
        'Dentist'
    ),
    (
        'John',
        'Franklin',
        '1999',
        'Firefighter'
    ),
    (
        'Judy',
        'Franklin',
        '1995',
        'Firefighter'
    ),
    (
        'Katy',
        'Lloyd',
        '1992',
        'School Teacher'
    ),
    (
        'Tamara',
        'Allen',
        '1963',
        'Ship Engineer'
    ),
    (
        'Maxim',
        'Lyons',
        '1985',
        'Polce Officer'
    ),
    (
        'Allan',
        'Lyons',
        '1983',
        'Computer Engineer'
    ),
    (
        'Marc',
        'Harris',
        '1980',
        'School Teacher'
    ),
    (
        'Elin',
        'Young',
        '2009',
        'Student'
    ),
    (
        'Diana',
        'Young',
        '2008',
        'Student'
    ),
    (
        'Diane',
        'Young',
        '2006',
        'Student'
    ),
    (
        'Alana',
        'Bird',
        '2003',
        'Student'
    ),
    (
        'Anna',
        'Becker',
        '1979',
        'Security Agent'
    ),
    (
        'Katie',
        'Grant',
        '1977',
        'Manager'
    ),
    (
        'Joan',
        'Grant',
        '2010',
        'Student'
    ),
    (
        'Bryan',
        'Bell',
        '2001',
        'Student'
    ),
    (
        'Belle',
        'Miller',
        '1970',
        'Professor'
    ),
    (
        'Peggy',
        'Stevens',
        '1990',
        'Bus Driver'
    ),
    (
        'Steve',
        'Williamson',
        '1975',
        'HR Cerk'
    ),
    (
        'Tyler',
        'Willuamson',
        '1999',
        'Doctor'
    ),
    (
        'Izabelle',
        'Williamson',
        '1990',
        'System Analyst'
    ),
    (
        'Annabel',
        'Williamson',
        '1960',
        'Cashier'
    ),
    (
        'Mohamed',
        'Waters',
        '1966',
        'Insuarance Agent'
    ),
    (
        'Marion',
        'Newman',
        '1970',
        'Computer Programmer'
    ),
    (
        'Ada',
        'Williams',
        '1986',
        'Computer Programmer'
    ),
    (
        'Sean',
        'Scott',
        '1983',
        'Bus Driver'
    ),
    (
        'Farrah',
        'Scott',
        '1974',
        'ship Engineer'
    ),
    (
        'Christine',
        'Lambert',
        '1973',
        'School Teacher'
    ),
    (
        'Alysha',
        'Lambert',
        '2007',
        'Student'
    ),
    (
        'Maia',
        'Grant',
        '1984',
        'School Teacer'
    );
SELECT *
FROM `Client`;
INSERT INTO Borrower (ClientID, BookID, BorrowDate)
VALUES (35, 17, '2016-07-20'),
    (1, 3, '2017-04-19'),
    (42, 8, '2016-10-03'),
    (62, 16, '2016-04-05'),
    (53, 13, '2017-01-17'),
    (33, 15, '2015-11-26'),
    (40, 14, '2015-01-21'),
    (64, 2, '2017-09-10'),
    (56, 30, '2017-08-02'),
    (23, 2, '2018-06-28'),
    (46, 19, '2015-11-18'),
    (61, 20, '2015-11-24'),
    (58, 7, '2017-06-17'),
    (46, 16, '2017-02-12'),
    (80, 21, '2018-03-18'),
    (51, 23, '2015-09-01'),
    (49, 18, '2015-07-28'),
    (43, 18, '2015-11-04'),
    (30, 2, '2018-08-10'),
    (48, 24, '2015-05-13'),
    (71, 5, '2016-09-05'),
    (35, 3, '2016-07-03'),
    (57, 1, '2015-03-17'),
    (23, 25, '2017-08-16'),
    (20, 12, '2018-07-24'),
    (25, 7, '2015-01-31'),
    (72, 29, '2016-04-10'),
    (74, 20, '2017-07-31'),
    (53, 14, '2016-02-20'),
    (32, 10, '2017-07-24'),
    (12, 15, '2018-04-25'),
    (77, 13, '2017-06-09'),
    (30, 4, '2017-10-24'),
    (37, 24, '2016-01-14'),
    (27, 26, '2017-06-05'),
    (1, 16, '2018-05-06'),
    (21, 9, '2016-03-19'),
    (69, 28, '2017-03-29'),
    (17, 19, '2017-03-14'),
    (8, 9, '2016-04-22'),
    (63, 18, '2015-01-25'),
    (65, 20, '2016-10-10'),
    (51, 19, '2015-07-28'),
    (23, 12, '2017-01-25'),
    (17, 4, '2017-04-18'),
    (68, 5, '2016-09-06'),
    (46, 13, '2017-09-30'),
    (15, 13, '2017-07-05'),
    (11, 19, '2017-12-14'),
    (78, 15, '2017-01-26'),
    (47, 9, '2015-03-03'),
    (68, 7, '2016-05-26'),
    (37, 26, '2017-02-06'),
    (48, 27, '2015-12-30'),
    (9, 21, '2017-10-21'),
    (29, 8, '2018-04-01'),
    (64, 18, '2017-08-29'),
    (61, 26, '2018-02-21'),
    (39, 28, '2016-07-26'),
    (73, 18, '2018-08-22'),
    (11, 13, '2018-01-17'),
    (45, 6, '2016-07-20'),
    (33, 13, '2018-03-18'),
    (10, 17, '2016-06-06'),
    (28, 18, '2017-02-17'),
    (51, 3, '2016-12-09'),
    (29, 2, '2015-09-18'),
    (28, 30, '2017-09-14'),
    (74, 20, '2015-12-12'),
    (15, 22, '2015-01-14'),
    (57, 8, '2017-08-20'),
    (2, 5, '2015-01-18'),
    (74, 12, '2018-04-14'),
    (51, 10, '2016-02-25'),
    (25, 17, '2015-02-24'),
    (45, 21, '2017-02-10'),
    (27, 25, '2016-08-03'),
    (32, 28, '2016-06-15'),
    (71, 21, '2017-05-21'),
    (75, 26, '2016-05-03'),
    (56, 32, '2015-12-23'),
    (26, 32, '2015-05-16'),
    (66, 32, '2015-05-30'),
    (57, 18, '2017-09-15'),
    (40, 15, '2016-09-02'),
    (65, 4, '2017-08-17'),
    (54, 7, '2015-12-19'),
    (29, 4, '2017-07-22'),
    (44, 9, '2017-12-31'),
    (56, 31, '2015-06-13'),
    (17, 4, '2015-04-01'),
    (35, 16, '2018-07-19'),
    (22, 18, '2017-06-22'),
    (39, 24, '2015-05-29'),
    (63, 14, '2018-01-20'),
    (53, 21, '2016-07-31'),
    (40, 9, '2016-07-10'),
    (52, 4, '2017-04-05'),
    (27, 20, '2016-09-04'),
    (72, 29, '2015-12-06'),
    (49, 16, '2017-12-19'),
    (6, 12, '2016-12-04'),
    (74, 31, '2016-07-27'),
    (48, 32, '2016-06-29'),
    (69, 2, '2016-12-27'),
    (60, 32, '2017-10-29'),
    (45, 22, '2017-06-12'),
    (42, 15, '2017-05-14'),
    (79, 8, '2016-10-13'),
    (70, 18, '2016-12-04'),
    (34, 8, '2016-03-06'),
    (43, 8, '2015-12-19'),
    (42, 32, '2016-04-20'),
    (67, 5, '2017-03-06'),
    (80, 25, '2015-06-23'),
    (54, 11, '2017-05-03'),
    (34, 28, '2017-08-30'),
    (65, 20, '2017-08-26'),
    (61, 19, '2018-01-05'),
    (38, 12, '2018-01-17'),
    (51, 4, '2016-05-13'),
    (7, 16, '2016-03-17'),
    (46, 16, '2016-11-25'),
    (75, 30, '2018-08-12'),
    (72, 32, '2015-03-12'),
    (44, 17, '2015-06-15'),
    (68, 15, '2016-02-21'),
    (21, 1, '2016-06-19'),
    (14, 25, '2016-10-10'),
    (68, 21, '2016-05-27'),
    (35, 20, '2015-03-19'),
    (16, 27, '2016-08-08'),
    (79, 31, '2018-03-07'),
    (14, 17, '2018-04-28'),
    (29, 28, '2018-03-11'),
    (41, 4, '2018-08-08'),
    (42, 3, '2016-02-23'),
    (45, 3, '2017-07-10'),
    (36, 16, '2018-07-19'),
    (36, 30, '2015-08-07'),
    (54, 32, '2018-03-14'),
    (61, 15, '2017-03-28'),
    (1, 13, '2018-05-17'),
    (43, 1, '2015-05-14'),
    (37, 14, '2015-07-30'),
    (62, 17, '2015-09-19'),
    (50, 22, '2016-12-02'),
    (45, 1, '2016-07-24'),
    (32, 17, '2018-03-10'),
    (13, 28, '2016-02-14'),
    (15, 9, '2018-08-11'),
    (10, 19, '2018-08-29'),
    (66, 3, '2016-11-27'),
    (68, 29, '2017-07-12'),
    (21, 14, '2018-06-27'),
    (35, 9, '2016-01-22'),
    (17, 24, '2016-08-25'),
    (40, 21, '2015-07-09'),
    (1, 24, '2016-03-28'),
    (70, 27, '2015-07-10'),
    (80, 26, '2016-04-24'),
    (29, 5, '2015-10-18'),
    (76, 12, '2018-04-25'),
    (22, 4, '2016-12-24'),
    (2, 2, '2017-10-26'),
    (35, 13, '2016-02-28'),
    (40, 8, '2017-10-02'),
    (68, 9, '2016-01-03'),
    (32, 5, '2016-11-13'),
    (34, 17, '2016-09-15'),
    (34, 16, '2018-04-13'),
    (80, 30, '2016-10-13'),
    (20, 32, '2015-11-17'),
    (36, 10, '2017-09-01'),
    (78, 12, '2018-06-27'),
    (57, 8, '2016-03-22'),
    (75, 11, '2017-06-27'),
    (71, 10, '2015-08-01'),
    (48, 22, '2015-09-29'),
    (19, 16, '2016-02-21'),
    (79, 30, '2018-08-20'),
    (70, 13, '2016-09-16'),
    (30, 6, '2017-02-10'),
    (45, 12, '2017-10-12'),
    (30, 27, '2016-11-23'),
    (26, 3, '2016-08-13'),
    (66, 6, '2017-01-14'),
    (47, 15, '2016-02-10'),
    (53, 30, '2018-08-08'),
    (80, 16, '2016-03-31'),
    (70, 13, '2018-02-03'),
    (14, 25, '2016-03-27'),
    (46, 22, '2016-01-13'),
    (30, 32, '2015-08-06'),
    (60, 14, '2016-11-27'),
    (14, 13, '2018-05-23'),
    (71, 15, '2016-06-22'),
    (38, 21, '2015-12-27'),
    (69, 30, '2017-04-29'),
    (49, 31, '2018-06-03'),
    (28, 28, '2015-05-29'),
    (49, 3, '2016-08-30'),
    (75, 1, '2015-10-29'),
    (78, 3, '2017-05-12'),
    (43, 18, '2015-03-25'),
    (27, 21, '2016-02-22'),
    (64, 22, '2015-04-03'),
    (21, 11, '2017-12-09'),
    (66, 29, '2016-12-20'),
    (45, 13, '2017-04-15'),
    (48, 30, '2015-01-31'),
    (20, 25, '2017-12-20'),
    (41, 20, '2018-01-29'),
    (51, 12, '2015-07-05'),
    (5, 1, '2015-04-12'),
    (40, 3, '2018-02-24'),
    (79, 4, '2018-06-27'),
    (15, 10, '2016-11-01'),
    (42, 22, '2016-12-28'),
    (17, 9, '2018-01-29'),
    (38, 13, '2016-05-09'),
    (79, 2, '2017-12-06'),
    (74, 3, '2015-12-07'),
    (46, 8, '2016-06-05'),
    (78, 22, '2018-08-11'),
    (45, 2, '2015-04-20'),
    (72, 31, '2015-11-11'),
    (18, 17, '2015-03-21'),
    (29, 3, '2017-08-13'),
    (66, 11, '2018-06-05'),
    (36, 16, '2016-04-28'),
    (26, 2, '2016-10-23'),
    (32, 1, '2017-10-31'),
    (62, 14, '2017-07-25'),
    (12, 4, '2015-07-08'),
    (38, 32, '2015-02-24'),
    (29, 16, '2016-07-28'),
    (36, 25, '2017-05-07'),
    (76, 7, '2015-06-13'),
    (28, 16, '2016-08-15'),
    (60, 13, '2016-08-26'),
    (8, 3, '2017-07-28'),
    (25, 1, '2016-07-30'),
    (62, 29, '2018-08-24'),
    (51, 8, '2016-09-01'),
    (27, 23, '2015-02-08'),
    (69, 12, '2018-06-25'),
    (51, 12, '2015-07-04'),
    (7, 4, '2015-05-01'),
    (31, 15, '2017-10-29'),
    (14, 23, '2015-01-15'),
    (14, 1, '2018-05-21'),
    (39, 25, '2015-12-26'),
    (79, 24, '2016-05-31'),
    (40, 15, '2016-03-18'),
    (51, 13, '2018-04-13'),
    (61, 1, '2015-02-11'),
    (15, 24, '2018-03-02'),
    (10, 22, '2018-01-21'),
    (67, 10, '2017-07-08'),
    (79, 11, '2016-12-11'),
    (19, 32, '2016-05-04'),
    (35, 11, '2017-08-01'),
    (27, 13, '2017-12-15'),
    (30, 22, '2015-12-22'),
    (8, 7, '2015-06-26'),
    (70, 9, '2016-03-20'),
    (56, 18, '2016-01-29'),
    (13, 19, '2015-03-06'),
    (61, 2, '2016-06-18'),
    (47, 13, '2017-09-18'),
    (30, 22, '2016-02-19'),
    (18, 22, '2016-12-31'),
    (34, 29, '2017-10-27'),
    (32, 21, '2015-06-03'),
    (9, 28, '2016-03-30'),
    (62, 24, '2015-03-23'),
    (44, 22, '2017-04-29'),
    (27, 5, '2015-03-25'),
    (61, 28, '2017-07-14'),
    (5, 13, '2016-12-04'),
    (43, 19, '2018-03-15'),
    (34, 19, '2016-06-05'),
    (35, 5, '2018-02-19'),
    (13, 12, '2016-09-23'),
    (74, 18, '2016-12-26'),
    (70, 31, '2017-08-15'),
    (42, 17, '2016-06-15'),
    (51, 24, '2018-07-30'),
    (45, 30, '2015-01-15'),
    (70, 17, '2017-10-07'),
    (77, 7, '2017-01-06'),
    (74, 25, '2015-09-25'),
    (47, 14, '2018-02-01'),
    (10, 2, '2017-04-18'),
    (16, 21, '2016-10-03'),
    (48, 5, '2016-09-17'),
    (72, 3, '2017-02-10'),
    (26, 23, '2016-03-01'),
    (49, 23, '2016-10-25');
SELECT *
FROM `Borrower`;
/*QUERIES*/
/*1. Display al cntents of Clients Table*/
SELECT *
FROM Client;
/*2. First names, last names , ages and occupation of
 all clients*/
SELECT ClientFirstName AS First_Name,
    ClientLastName AS Last_Name,
    YEAR(CURRENT_DATE) - ClientDOB AS Age,
    Occupation
FROM Client
LIMIT 0, 80;