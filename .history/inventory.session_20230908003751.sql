-- Active: 1685984322357@@localhost@3306@INVENTORY
SELECT * FROM ARTISTS;
select * FROM COMPACT_DISCS;
select AVG(IN_STOCK) FROM COMPACT_DISCS;
SELECT SUM(IN_STOCK) AS TOTAL_IN_STOCK FROM COMPACT_DISCS;
SELECT CD_TITLE AS TITLE,LABEL_ID AS L FROM COMPACT_DISCS;

