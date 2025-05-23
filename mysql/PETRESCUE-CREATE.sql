

create table PETRESCUE (
	ID INTEGER NOT NULL,
	ANIMAL VARCHAR(20),
	QUANTITY INTEGER,
	COST DECIMAL(6,2),
	RESCUEDATE DATE,
	PRIMARY KEY (ID)
	);

insert into PETRESCUE values 
	(1,'Cat',9,450.09,'2018-05-29'),
	(2,'Dog',3,666.66,'2018-06-01'),
	(3,'Dog',1,100.00,'2018-06-04'),
	(4,'Parrot',2,50.00,'2018-06-04'),
	(5,'Dog',1,75.75,'2018-06-10'),
	(6,'Hamster',6,60.60,'2018-06-11'),
	(7,'Cat',1,44.44,'2018-06-11'),
	(8,'Goldfish',24,48.48,'2018-06-14'),
	(9,'Dog',2,222.22,'2018-06-15');
SELECT * FROM PETRESCUE;
SELECT SUM(COST) AS COST FROM PETRESCUE;
SELECT * FROM PETRESCUE;
SELECT MAX(QUANTITY) FROM PETRESCUE;
SELECT AVG(COST) AS AVERAGE FROM PETRESCUE;
SELECT ROUND(COST,2) FROM PETRESCUE;
SELECT LENGTH(ANIMAL) FROM PETRESCUE;
SELECT UCASE(ANIMAL) FROM PETRESCUE;
SELECT DAY(RESCUEDATE) FROM PETRESCUE;
SELECT DATE_ADD(RESCUEDATE,INTERVAL 3 DAY) FROM PETRESCUE;
SELECT DATE_ADD(RESCUEDATE,INTERVAL 2 MONTH) FROM PETRESCUE;
SELECT DATE_SUB(RESCUEDATE,INTERVAL 3 DAY) FROM PETRESCUE;
SELECT FROM_DAYS(DATEDIFF(CURRENT_DATE,RESCUEDATE)) FROM PETRESCUE;
SELECT AVG(COST/QUANTITY) FROM PETRESCUE WHERE ANIMAL="DOG";
SELECT DISTINCT UCASE(ANIMAL) FROM PETRESCUE;
SELECT * FROM PETRESCUE WHERE LCASE(ANIMAL)="cat";
SELECT SUM(QUANTITY) FROM PETRESCUE WHERE MONTH(RESCUEDATE)="05";
SELECT ID,DATE_ADD(RESCUEDATE,INTERVAL 1 YEAR) AS TARGETDATE FROM PETRESCUE;