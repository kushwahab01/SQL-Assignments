create database skillmine
use skillmine

create table Emp(id int, name varchar(244), salary int, age int, deptname varchar(244)) 

select* from INFORMATION_SCHEMA.TABLES

select * from Emp

sp_help Emp

alter table Emp alter column name varchar(40);

sp_help Emp


alter table emp alter column name varchar(20)

sp_help emp

alter  table emp add city varchar(20)

alter table emp drop column city

select * from sys.databases

 select*from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='emp'

 create table coustomer(
 cid int primary key,
 cname varchar(20) not null,
 phone int check(phone>=10),
city varchar(20) default 'india',

 )

