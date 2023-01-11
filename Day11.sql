use skillmine

select * from Worker

insert into Worker values(3,'sanjeev','Kushwha',10000,cast('14-12-2000' as date), 'HR')
insert into Worker values(4, 'shubham', 'jogdankar', 34045, cast('01-02-2021' as date),'Develeopment')
insert into Worker values(5, 'vikrant', 'kamble', 52455, cast('02-02-2010' as date),'Finance')
insert into Worker values(6, 'shivam', 'pandye', 14121, cast('04-02-2014' as date),'HR')
insert into Worker values(7, 'Pranita', 'meshram', 25000, cast('12-12-2015' as date), 'calling')
insert into Worker values(8, 'bushan', 'sapkal', 75000, cast('02-02-2022' as date),'Develeopment')
insert into Worker values(3, 'shubham', 'jogdankar',34250, cast('01-02-2021'as date),'Development')
insert into Worker values(4,'vikrant', 'kamble',52545,cast('02-05-2010' as date),'Finance')
insert into Worker values(5,'shivam', 'pandye', 15245,cast('04-02-2011'as date), 'calling')
insert into Worker values(6,'pranita','meshram',14520,cast('02-05-2010'as date),'finance')
insert into Worker values(7,'bhushn', 'sapkal',41464,cast('10-10-2014'as date),'Admin')
insert into Worker values(9,'amitabh', 'bacchan', 55000, cast('09-02-2020' as date), 'HR')


CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT,
	BONUS_DATE DATE,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
)
select * from Bonus
drop table Bonus

INSERT INTO Bonus VALUES
		(1, 5000, cast('10-02-2022'as date)),
		(2, 3000, cast('01-06-2011'as date)),
		(3, 4000, cast('03-02-2020'as date)),
		(1, 4500, cast('05-02-2021'as date)),
		(2, 3500, cast('09-06-2011'as date));

		insert into Bonus values(1,5000,cast('12-02-2020'as date))


		CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE varchar(25),
	AFFECTED_FROM DATE,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
)

select * from Title

drop table Title
INSERT INTO Title VALUES
 (1, 'Manager', cast('2016-02-20 00:00:00'as datetime)),
 (2, 'Executive', cast('2016-06-11 00:00:00'as datetime)),
 (8, 'Executive', cast('2016-06-11 00:00:00'as datetime)),
 (5, 'Manager', cast('2016-06-11 00:00:00'as datetime)),
 (4, 'Asst. Manager', cast('2016-06-11 00:00:00'as datetime)),
 (7, 'Executive', cast('2016-06-11 00:00:00'as datetime)),
 (6, 'Lead', cast('2016-06-11 00:00:00'as datetime)),
 (3, 'Lead', cast('2016-06-11 00:00:00'as datetime));

 insert into Title values (5,'Manager', cast('02-02-2016'as date))
 insert into Title values (2,'Executive', cast('11-06-2016'as date))
 insert into Title values (6,'Manager', cast('02-02-2016'as date))
 insert into Title values (4,'Ass.Manager', cast('06-11-2016'as date))
 insert into Title values (3,'Lead', cast('11-06-2016'as date))
 insert into Title values (1,'Executive', cast('06-05-2016'as date))


 --Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>

select FIRST_NAME AS 'WORKER_NAME' FROM Worker
select * from Worker

--Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case

select upper(first_name) from Worker

--Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
select DISTINCT DEPARTMENT from worker

--Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
SELECT SUBSTRING(FIRST_NAME,1,3) FROM Worker

--Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.


--Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

SELECT RTRIM(FIRST_NAME) FROM Worker

--Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side

SELECT LTRIM(DEPARTMENT) FROM Worker

--Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

SELECT DISTINCT LEN(DEPARTMENT) FROM Worker

--Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

SELECT REPLACE(FIRST_NAME,'a', 'A') from Worker

--Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.

SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS 'COMPLETE NAME' FROM Worker

--Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.

SELECT * FROM Worker ORDER BY FIRST_NAME

-- Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending

SELECT * FROM Worker ORDER BY DEPARTMENT DESC,FIRST_NAME 

--Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.

SELECT * FROM Worker WHERE FIRST_NAME IN('BRIJESH', 'AKASH')

--Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.

SELECT * FROM Worker WHERE FIRST_NAME NOT IN('BRIJESH', 'AKASH')

--Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.

SELECT * FROM Worker WHERE DEPARTMENT='ADMIN'

--Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.

SELECT* FROM Worker WHERE FIRST_NAME LIKE'%A%'

--Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’

SELECT* FROM Worker WHERE FIRST_NAME LIKE '%A'

--Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets

SELECT * FROM Worker WHERE FIRST_NAME LIKE '______H'


--Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.

SELECT * FROM Worker WHERE SALARY BETWEEN 10000 AND 20000


--Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014

SELECT * FROM Worker WHERE JOINING_DATE='2014-10-10'
SELECT* FROM Worker WHERE YEAR(JOINING_DATE)=2014 AND MONTH(JOINING_DATE)=10

--Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.

SELECT COUNT(*) FROM Worker WHERE DEPARTMENT='ADMIN'


--Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.

SELECT FIRST_NAME, SALARY FROM Worker WHERE SALARY>=50000 AND SALARY<=10000

--Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order

SELECT COUNT(*) FROM Worker GROUP BY DEPARTMENT ORDER BY DEPARTMENT DESC

--Q-24. Write an SQL query to print details of the Workers who are also Managers.

select distinct w.FIRST_NAME, t.Worker_Title
from Worker w
inner join Title t
on w.WORKER_ID=t.WORKER_REF_ID
AND T.WORKER_TITLE IN('MANAGER')



SELECT * FROM Worker
SELECT * FROM TItle

--Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table.


--Q-26. Write an SQL query to show only odd rows from a table

USE skillmine

SELECT WORKER_ID FROM WORKER WHERE WORKER_ID%2<>0

--Q-27. Write an SQL query to show only even rows from a table.

SELECT Worker_ID FROM Worker WHERE WORKER_ID%2=0

--Q-28. Write an SQL query to clone a new table from another table

SELECT * INTO NEWTAB FROM Worker

SELECT * FROM NEWTAB

SELECT* FROM Worker
SELECT* INTO NEWTAB1 FROM NEWTAB

--Q-29. Write an SQL query to fetch intersecting records of two tables
SELECT * FROM Worker INTERSECT SELECT * FROM NEWTAB

--Q-30. Write an SQL query to show records from one table that another table does not have

SELECT * FROM Worker MINUS SELECT * FROM NEWTAB

--Q-31. Write an SQL query to show the current date and time

SELECT GETDATE()
SELECT SYSDATETIME()

--Q-32. Write an SQL query to show the top n (say 10) records of a table

