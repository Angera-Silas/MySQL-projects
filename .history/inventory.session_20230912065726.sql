-- Active: 1685984322357@@localhost@3306@INVENTORY
SHOW TABLES;
SELECT * FROM ARTISTS;
select * FROM COMPACT_DISCS;
select AVG(IN_STOCK) FROM COMPACT_DISCS;
SELECT SUM(IN_STOCK) AS TOTAL_IN_STOCK FROM COMPACT_DISCS;
SELECT CD_TITLE AS TITLE,LABEL_ID AS SERIAL_NUMBER FROM COMPACT_DISCS;


SELECT DISTINCT TYPE_ID FROM CD_TYPES;
SELECT COUNT(CD_ID) FROM CD_TYPES;
SELECT CD_TITLE AS TITLE, LABEL_ID AS SERIAL_NUMBER FROM COMPACT_DISCS WHERE LABEL_ID > 830;
SELECT CD_TITLE,LABEL_ID AS SERIAL_NO,`IN_STOCK`AS BALANCE FROM `COMPACT_DISCS` WHERE `IN_STOCK`>= 20 AND `IN_STOCK`<=42;
SHOW TABLES;
SELECT * FROM CDS_IN_STOCK;
SELECT * FROM `ARTIST_CDS`;
SELECT CD_TITLE ,IN_STOCK FROM `COMPACT_DISCS` WHERE IN_STOCK = 6 OR IN_STOCK > 10 AND LABEL_ID = 835;
SELECT * FROM `COMPACT_DISCS`WHERE (`IN_STOCK`=6 OR `IN_STOCK`=27) AND (`LABEL_ID`=833 OR `LABEL_ID`=)


