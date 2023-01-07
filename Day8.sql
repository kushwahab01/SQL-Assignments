use skillmine

create table costomer
(
coustomerid int primary key identity(1,1),
customername varchar(20),
)

create table Myorder(
orderid int primary key identity(1,1),
coustomerid int,
constraint fk_coust_order foreign key(coustomerid) references costomer(coustomerid)

)

insert into costomer values('brijesh')
insert into costomer values('akash')
insert into costomer values('rajesh')

select * from costomer

select deptid ,count(deptid) as 'total employee'
from Emp
group by deptid

select ename , count(ename) as 'Total employee'
from Emp
group by ename	


select* from Dept

SELECT* FROM EMP

select d.deptname, count(e.eid) as 'Emp count' 
from Emp e
inner join Dept d on d.deptid=e.deptid
where d.deptname='development'
group by d.deptname


select d.deptname, count(e.deptid) as 'total emp'
from emp e
inner join Dept d on d.deptid=e.deptid
where d.deptname='hr'
group by d.deptname

select d.deptname, count(e.deptid) as 'total count'
from Emp e
inner join Dept d on d.deptid=e.deptid
where d.deptname='finance'
group by d.deptname

select d.deptname, count(e.deptid) as 'total count'
from Emp e
inner join Dept d on d.deptid=e.deptid
where d.deptname='calling'
group by d.deptname	

select * from Dept

select e.ename,avg(e.salary) as 'total '
from Emp e
group by e.ename
having e.salary<avg(e.salary)


select e.ename from Emp e
group by e.ename
having salary < avg (salary)


select * from emp

SELECT ename, COUNT(eid) as totalemp from Emp
group by ename
having salary<avg(salary)


create view v1 as
select * from Emp where salary<20000

select * from v
select * from v1


drop view v

alter view v1 as 
select * from emp where salary>20000



