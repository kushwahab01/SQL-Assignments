use skillmine

select salary from emp





--find emp who get less than avg salary from dept

select ename from Emp where salary< 
(
select avg(salary) from Emp where deptid=(select deptid from Dept where deptname='HR')
)

--select emp whose country  same as emo id 3

select ename from Emp where country=
(
select country from emp where eid=2
)

--display emp whose get salary more than emp id 11

select * from Emp where salary>
(
select salary from emp where eid=11
)



--display avg salary from all dept

select avg(salary) from Emp
group by deptid

select * from Myorder
select* from Product

truncate table myorder
alter table Myorder add sp int

alter table product add price int 
update Product set price=1200 where pid=1
update Product set price=1000 where pid=2
update Product set price=1300 where pid=3
update Product set price=1500 where pid=4
update Product set price=2000 where pid=5

insert into Orderd select pid, pname, price from Product where pid in(select pid from Product where price>1500)

update Emp set salary=salary*1.20 where deptid=(select deptid from Dept where deptname='development') 

select * from Emp

delete from Emp where deptid=()
create table Orderd(
pid int primary key,
pname varchar(20),
price int
)

select* from Orderd