use skillmine

select * from Coust

select* from coustomer

drop table coustomer

--1.	Write a statement that will select the City column from the Customers table

select city from Coust

--2.	Select all the different values from the Country column in the Customers table.

select distinct country from Coust

select* from Coust

update Coust set city='London' where cid=2 

--3.	Select all records where the City column has the value "London

select * from Coust where city='London'

--4.	Use the NOT keyword to select all records where City is NOT "Berlin".

select * from Coust where not city='Berlin'



update Coust set cid=21 where cid=2
update Coust set cid=22 where cid=3
update Coust set cid=23 where cid=4
update Coust set cid=24 where cid=5
update Coust set cid=25 where cid=6

select* from Coust

--5.	Select all records where the CustomerID column has the value 23.

select* from Coust where cid=23


--6.	Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.

select * from Coust where city='Berlin'
select* from Coust

update Coust set city='Berline' where cid=14

select * from Coust where city='Berline' or postalcode=121110

--7.	Select all records where the City column has the value 'Berlin' or 'London'.

select * from Coust where city in('berline', 'London')

--8.	Select all records from the Customers table, sort the result alphabetically by the column City.

select * from Coust order by city

--9.	Select all records from the Customers table, sort the result reversed alphabetically by the column City.

select * from Coust order by city desc


--10.	Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City

select* from Coust order by country

select* from Coust order by city


--11.	Select all records from the Customers where the PostalCode column is empty.

update Coust set postalcode=null where cid=7

select* from Coust where postalcode is null


--12.	Select all records from the Customers where the PostalCode column is NOT empty.

select* from Coust where postalcode is not null


--13.	Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".

update Coust set city='Oslo' where country='Norway'

select* from Coust


--14.	Delete all the records from the Customers table where the Country value is 'Norway'.

delete Coust where country='Norway'


alter table Coust add price int

sp_help Coust

update Coust set price=20 where cid=8
update Coust set price=30 where cid=9
update Coust set price=40 where cid=10
update Coust set price=50 where cid=11
update Coust set price=60 where cid=12
update Coust set price=70 where cid=13
update Coust set price=80 where cid=14
update Coust set price=90 where cid=20
update Coust set price=50 where cid=21
update Coust set price=40 where cid=22
update Coust set price=60 where cid=23
update Coust set price=35 where cid=24


--15.	Use the MIN function to select the record with the smallest value of the Price column.

select min(price) from Coust


--16.	Use an SQL function to select the record with the highest value of the Price column.

select max(price) from Coust


--17.	Use the correct function to return the number of records that have the Price value set to 20

select * from Coust where price=20


--18.	Use an SQL function to calculate the average price of all products.

select AVG(price) from Coust


--19.	Use an SQL function to calculate the sum of all the Price column values in the Products table

select sum(price) from Coust

--20.	Select all records where the value of the City column starts with the letter "a".

select * from Coust where city like 'a%'

--21.	Select all records where the value of the City column ends with the letter "a".

select * from Coust where city like '%a'

--22.	Select all records where the value of the City column contains the letter "a".

select * from Coust where city like '%a%'

--23.	Select all records where the value of the City column starts with letter "a" and ends with the letter "b".

select * from Coust where city like 'a%b'


--24.	Select all records where the value of the City column does NOT start with the letter "a".

select * from Coust where city not like 'a%'

--25.	Select all records where the second letter of the City is an "a".

select * from Coust where city like '_a%'


--26.	Select all records where the first letter of the City is an "a" or a "c" or an "s".

select * from Coust where city like 'a%' or city like 'c%' or city like 's%'

--27.	Select all records where the first letter of the City starts with anything from an "a" to an "f".

select * from Coust where city like 'a%' or city like 'b%' or city like 'c%' or city like 'd%' or city like 'e%' or city like 'f%'
select* from Coust where city like'[a-f]%'

--28.	Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".

select * from Coust where city not like 'a%' and city not like 'c%' and city not like 'f%'
select* from Coust where city not like'[acf]%'

--29.	Use the IN operator to select all the records where the Country is either "Norway" or "France".

select * from Coust where country in('norway','france')

--30.	Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".

select * from Coust where country not in('norway', 'france')


--31.	Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20

select* from Coust where price between 10 and 20


--32.	Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.

select * from Coust where price not between 10 and 20


--33.	Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.

select* from Coust where ProductName between 'geitost' and 'pavlova'

alter table Coust add ProductName varchar(20)


select postalcode as 'pno' from Coust



select* from Coust

alter table Coust add DOB date

update Coust set DOB=CAST('12-12-2022'as date) where cid=8
update Coust set DOB=CAST('14-02-2020' as date) where cid=9
update Coust set DOB=cast('02-02-2021' as date) where cid=10
update Coust set DOB=cast('12-11-2021' as date) where cid=11
update Coust set DOB=cast('23-09-2021' as date) where cid=12
update Coust set DOB=cast('23-09-2022' as date) where cid=13
update Coust set DOB=cast('13-09-2011' as date) where cid=14
update Coust set DOB=cast('23-02-2011' as date) where cid=20
update Coust set DOB=cast('09-03-2022' as date) where cid=21
update Coust set DOB=cast('05-05-2021' as date) where cid=22
update Coust set DOB=cast('23-10-2021' as date) where cid=23
update Coust set DOB=cast('23-11-2021' as date) where cid=24


update Coust set ProductName='britaniya' where cid=8
update Coust set ProductName='nestle' where cid=9
update Coust set ProductName='gsk' where cid=10
update Coust set ProductName='kwality wals' where cid=11
update Coust set ProductName='rei agro' where cid=12
update Coust set ProductName='krbl' where cid=13
update Coust set ProductName='hatsun' where cid=14
update Coust set ProductName='heritage' where cid=20
update Coust set ProductName='geitost' where cid=21
update Coust set ProductName='pavlova' where cid=22
update Coust set ProductName='butter' where cid=23
update Coust set ProductName='pinet' where cid=24

select* from Coust

--34.	When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.

select postalCode as 'pno' from Coust

--35.	When displaying the Customers table, refer to the table as Consumers instead of Customers.

select consumer.* FROM Coust consumer


--36.	List the number of customers in each country.

select cname,country from Coust order by country


--37.	List the number of customers in each country, ordered by the country with the most customers first.

--select cname from Coust having COUNT(cname)>Cname order by country

--38.	Write the correct SQL statement to create a new database called testDB.

create database testBD


--39.	Write the correct SQL statement to delete a database named testDB
	
drop database testBD


--40.	Add a column of type DATE called Birthday in Persons table
select DOB as 'Birthday' from Person

alter table Person add DOB date
select* from Person

insert into Person values(2,'sanjeev',cast('10-12-2022'as date))
insert into Person values(3,'ajay',cast('12-02-2022'as date))

--41.	Delete the column Birthday from the Persons table

alter table Person drop column DOB


