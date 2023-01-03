use skillmine

drop table emp
drop table dept

create table Dept
(
deptid int primary key,
deptname varchar(20),

)

create table Emp
(
eid int primary key,
ename varchar(20) not null,
age int check(age>18),
country varchar (20),
deptid int foreign key references Dept(deptid),
mobile numeric (10),
salary int,
)

sp_help emp

insert into emp values(1, 'SCOTT', 23,'INDIA',101,8795562655,25000)
insert into emp values(2, 'RAM', 21,'AFGANISTAN',102,8765562655,20000)
insert into emp values(3, 'ROHAN', 26,'ALBENIYA',103,8796462655,30000)
insert into emp values(4, 'RAJESH', 27,'AUSTRALIA',104,8795862655,50000)
insert into emp values(5, 'MANYA', 20,'ARGENTINA',105,8795562666,69000)
insert into emp values(6, 'MOHAN', 23,'AUSTRAILA',101,8795562225,31000)
insert into emp values(7, 'MANGESH', 19,'BANGLADESH',101,8795462655,15000)
insert into emp values(8, 'AKASH', 32,'BENIN',105,8965562655,35000)
insert into emp values(9, 'AJIT', 24,'BRAZIL',103,9895562655,62000)
insert into emp values(10, 'BALKRUSHNA', 31,'BULGERIA',104,7795562655,10000)
insert into emp values(11, 'BORKAR', 45,'CAMBODIA',103,6695562655,14000)
insert into emp values(12, 'RAHUL', 35,'COLOMBIA',102,9995562655,42000)
insert into emp values(13, 'RAJ', 40,'DOMINICA',102,9595562655,65000)
insert into emp values(14, 'RITESH', 21,'ETHIOPIA',104,9695562655,45000)
insert into emp values(15, 'BRIJESH', 22,'FINLAND',103,7695562655,24000)
insert into emp values(16, 'MAHESH', 35,'GAMBIA',101,9295562655,45000)
insert into emp values(17, 'SHUBHAM', 24,'GREECE',105,8895562655,23000)

insert into Dept values(101, 'HR')
insert into Dept values(102, 'DEVELOPMENT')
insert into Dept values(103, 'TESTING')
insert into Dept values(104, 'CALLING')
insert into Dept values(105, 'FINANCE')

SELECT * FROM Emp

select ename from emp

SELECT SALARY , DEPTID FROM Emp

ALTER TABLE EMP ADD LOC VARCHAR(20);
select* from emp

alter table emp drop  column loc

alter table emp rename column country to loc

exec sp_rename 'emp.country','loc'

sp_rename 'emp.loc', 'country'

select ename , salary, salary*12 from emp

