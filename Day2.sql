use skillmine

drop table Emp

-- Create table employee

create table emp(
eid int primary key,
ename varchar(20) not null,
salary decimal not null,
city varchar(20),
phone int unique,
country varchar(20),

)

sp_help emp

-- To retrive the data

select * from emp

--insert the data

insert into emp values(1,'scott',10000,'banglore',1234567890, 'india')
insert into emp values(2,'harry',520000,'pune',1212121212, 'Uk')
insert into emp values(3,'ram',12000,'hadapsar',1111111111, 'America')
insert into emp values(4,'mohan',50000,'katraj',1122112211, 'Afganistan')
insert into emp values(5,'roy',10005,'pimpri',1231231231, 'Bhutan')
insert into emp values(6,'brijesh',15000,'chinchwad',1213121312, 'Austrelia')
insert into emp values(7,'akash',16000,'kharadi',1123112311, 'newzeland')
insert into emp values(8,'sanjay',161000,'undri',1312131212, 'kanada')
insert into emp values(9,'akshay',560000,'pisoli',1111122222, 'rassia')
insert into emp values(10,'ajay',106115,'rajgadh',1235252523, 'ukrain')

create table dept(
deptid int not null,
deptname varchar(20),

)

insert into dept values(101,'HR')
insert into dept values(102,'Admin')
insert into dept values(103,'Development')
insert into dept values(101,'Research')
insert into dept values(101,'Testing')


alter table emp add email varchar(20)

update emp set email = 'brijesh1@gmail.com' where eid=1
update emp set email = 'sanjeev@gmail.com' where eid=2
update emp set email = 'akash@gmail.com' where eid=3
update emp set email = 'shubham@gmail.com' where eid=4
update emp set email = 'jivan@gmail.com' where eid=5
update emp set email = 'mahesh@gmail.com' where eid=6
update emp set email = 'balveer@gmail.com' where eid=7
update emp set email = 'motu@gmail.com' where eid=8
update emp set email = 'narayan@gmail.com' where eid=9
update emp set email = 'ratnakar@gmail.com' where eid=10

select * from emp

select * from emp where salary<25000

select* from emp where salary>100005

