-- Active: 1685984322357@@localhost@3306@INVENTORY

SHOW TABLES;

SELECT * FROM ARTISTS;

select * FROM COMPACT_DISCS;

select AVG(IN_STOCK) FROM COMPACT_DISCS;

SELECT SUM(IN_STOCK) AS TOTAL_IN_STOCK FROM COMPACT_DISCS;

SELECT
    CD_TITLE AS TITLE,
    LABEL_ID AS SERIAL_NUMBER
FROM COMPACT_DISCS;

SELECT DISTINCT TYPE_ID FROM CD_TYPES;

SELECT COUNT(CD_ID) FROM CD_TYPES;

SELECT
    CD_TITLE AS TITLE,
    LABEL_ID AS SERIAL_NUMBER
FROM COMPACT_DISCS
WHERE LABEL_ID > 830;

SELECT
    CD_TITLE,
    LABEL_ID AS SERIAL_NO,
    `IN_STOCK` AS BALANCE
FROM `COMPACT_DISCS`
WHERE
    `IN_STOCK` >= 20
    AND `IN_STOCK` <= 42;

SHOW TABLES;

SELECT * FROM CDS_IN_STOCK;

SELECT * FROM `ARTIST_CDS`;

/* The querry below shows how to use WHERE clause in
 in combination with AND keyword and OR keyword*/

SELECT CD_TITLE, IN_STOCK
FROM `COMPACT_DISCS`
WHERE
    IN_STOCK = 6
    OR IN_STOCK > 10
    AND LABEL_ID = 835;

SELECT *
FROM `COMPACT_DISCS`
WHERE (
        `IN_STOCK` = 6
        OR `IN_STOCK` = 27
    )
    AND (
        `LABEL_ID` = 833
        OR `LABEL_ID` = 829
    );

SELECT CD_TITLE, IN_STOCK FROM COMPACT_DISCS WHERE IN_STOCK <> 13;

SELECT CD_TITLE
FROM `COMPACT_DISCS`
WHERE
    `IN_STOCK` < 20
    AND NOT `LABEL_ID` < 810;

SELECT * FROM `CDS_IN_STOCK`;

/*a statement to demonstrate the use of group by clause*/

SELECT
    LABEL_ID,
    SUM(IN_STOCK) AS BALANCE
FROM `COMPACT_DISCS`
GROUP BY(`LABEL_ID`);

SELECT * FROM ARTIST_CDS;

SELECT
    CD_ID,
    COUNT(`ARTIST_ID`) AS ARTISTS
FROM `ARTIST_CDS`
GROUP BY `CD_ID`;

SELECT
    LABEL_ID,
    SUM(IN_STOCK) AS BALANCE
FROM `COMPACT_DISCS`
GROUP BY(LABEL_ID)
WITH ROLLUP
LIMIT 20;

/*Next we move on to HAVING clause and see how it is used*/

SELECT
    LABEL_ID,
    SUM(IN_STOCK) AS BALANCE
FROM `COMPACT_DISCS`
GROUP BY(`LABEL_ID`)
HAVING BALANCE < 20;

SELECT * FROM ARTISTS;

SELECT * FROM `CDS_IN_STOCK`;

SELECT CD_TITLE, IN_STOCK
FROM COMPACT_DISCS
WHERE
    IN_STOCK > 10
    AND IN_STOCK < 30;

SELECT LABEL_ID , SUM(IN_STOCK) AS TOTAL_IN_STOCK FROM COMPACT_DISCS GROUP BY `LABEL_ID`;

SELECT LABEL_ID , SUM(IN_STOCK) AS TOTAL_IN_STOCK FROM COMPACT_DISCS GROUP BY `LABEL_ID` HAVING SUM(`IN_STOCK`)>10;

SELECT * FROM `COMPACT_DISCS`
WHERE `IN_STOCK`>10
ORDER BY `IN_STOCK` ASC LIMIT 13;

SELECT * FROM `COMPACT_DISCS`
WHERE `IN_STOCK`>10
ORDER BY CD_TITLE DESC LIMIT 13;

/*Modifying data*/
INSERT INTO `CD_LABELS` VALUES (837,'DRG Records')

INSERT INTO COMPACT_DISCS VALUES(
    116,'Ann Hampton Callaway',836,14
)

INSERT INTO COMPACT_DISCS(CD_ID,CD_TITLE,LABEL_ID,IN_STOCK) VALUES (117,'Rhythm Country and Blues',832,21);

/*The IN_STOCK value above is incorrect therefore
we should update it to 25*/
UPDATE `COMPACT_DISCS` SET `IN_STOCK`= 25 WHERE `CD_ID` = 117;

UPDATE `COMPACT_DISCS`SET `LABEL_ID` = (SELECT LABEL_ID FROM `CD_LABELS` )