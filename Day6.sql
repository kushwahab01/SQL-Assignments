use skillmine

--Create table Coustomre

create table Coust
(
cid int primary key,
cname varchar(20),
city varchar(20),
country varchar(20),
postalcode int unique,
pid int

)

--Create table Person

create table Person
(
pid int primary key,
pname varchar(20),
DOB date,
)


sp_help coust

insert into Coust values (14, 'shweta', 'Oslo', 'US',121115,102)
insert into Coust values (2, 'raj', 'irving', 'UK',121145,103)
insert into Coust values (3, 'anand', 'oakland','Austrelia', 121714,104)
insert into Coust values (4, 'divya', 'san jose','canada',121140,105)
insert into Coust values (5, 'akash', 'houston','france',121456,106)
insert into Coust values (6, 'shubham', 'las vegas','norway',121781,107)
insert into Coust values (7, 'sanjay', 'denver','belgium', 111110,108)
insert into Coust values (8, 'sonya', 'chicago','columbia',127610,109)
insert into Coust values (9, 'manoj', 'indianapolis','algeria',163110,110)
insert into Coust values (10, 'nisha', 'columbus','bhutan',121367,111)
insert into Coust values (11, 'brijesh', 'boston','belarus', 128642,112)
insert into Coust values (12, 'rohan', 'Austin','cuba',122530,113)
insert into Coust values (13, 'ashwini', 'New york','bhutan',121333,114)

select* from Coust

