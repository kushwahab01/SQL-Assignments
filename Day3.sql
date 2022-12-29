use skillmine

drop table Emp

-- Create table employee

create table emp(
eid int,
ename varchar(20),
salary decimal,
city varchar(20),
phone int,
country varchar(20),
constraint pk_employee primary key (eid),
constraint unique_emp unique (phone),


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
deptid int,
deptname varchar(20),

)
 drop table dept
insert into dept values(1,'HR')
insert into dept values(2,'Admin')
insert into dept values(2,'Development')
insert into dept values(3,'Research')
insert into dept values(4,'Testing')

drop table dept
select * from dept

alter table emp add email varchar(20)


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

alter table dept add constraint fk_deptid primary key (deptid)

alter table emp drop constraint pk_empid

alter table emp add constraint fk_empdept foreign key(deptid) references dept(deptid)

alter table emp add deptid int 


select* from dept
sp_help emp

update emp set deptid=4 where eid=6
update emp set deptid=2 where eid=7
update emp set deptid=3 where eid=8
update emp set deptid=1 where eid=9
update emp set deptid=2 where eid=10

select * from emp


select * from emp where ename like 'a%'

select * from emp where ename like '%a%'

select * from emp where country like 'i%'

select * from emp where country not like 'i%'

select * from emp where ename not like'%a%'

select * from emp where eid in(1,2,3)

select* from emp where deptid in(1,2)

select * from dept where deptid in(103,102)

select * from 
select deptname from dept where deptid in(101,103)

select * from emp where where deptid not in(103,102)

select * from emp
select * from dept

select deptname from dept where deptid not in(1,2)

select salary from emp where salary between (10000 and 20000)

select * from emp where deptid in(1,2,3)

sp_help dept

sp_help emp

drop table dept

create table dept
(
deptid int,
deptname varchar(20),

)

alter table emp add deptid int 

select * from emp
select * from dept

create table dept(
deptid int, 
deptname varchar(20),
constraint fk_dept primary key(deptid)

)


insert into dept values(1,'HR')
insert into dept values(2,'DEVELOPMENT')
insert into dept values(3,'RESEARCH')
insert into dept values(4,'TESTING')
insert into dept values(5,'FINANCE')

select * from dept


update emp set deptid=5 where eid=2
update emp set deptid=3 where eid=3
update emp set deptid=4 where eid=4
update emp set deptid=1 where eid=5
update emp set deptid=2 where eid=6
update emp set deptid=3 where eid=7
update emp set deptid=4 where eid=8
update emp set deptid=5 where eid=9
update emp set deptid=2 where eid=10

select * from emp

select * from emp where deptid in(1,2)
alter table emp add constraint fk_emp foreign key 

select ename, salary from emp where deptid in(1,2)

select deptname from dept where deptid=1;

select salary from emp 

