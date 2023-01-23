use skillmine

select* from ProductT
sp_rename 'ProductT.column' pname, name

truncate table productT
drop table ProductT
create table ProductT(
id int primary key identity(1,1),
name varchar(40),
price int,
company varchar(40)
)

create table Employee(
empid int primary key identity(1,1),
ename varchar(20),
deptname varchar(40),
salary int,
age int
)


select* from Student

create table stud(
rollno int primary key identity(1,1),
name varchar(40),
stream varchar(100),
perc int,
age int,
gender varchar(20)
)

select* from Book

create table NewBook(
id int primary key identity(1,1),
name varchar(20),
price int,
auther varchar(40),
edition varchar(40),
publication varchar(40)
)

select* from Employee

select* from stud


