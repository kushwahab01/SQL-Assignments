use skillmine


-- inner join
select e.* , d.deptname
from Emp e
inner join dept d on d.deptid=e.deptid

--left outer join

select e.*, d.deptname
from Emp e
left join dept d on d.deptid=e.deptid

--right join

select e.*,d.deptname
from Emp e
right join dept d on d.deptid=e.deptid


--full join

select e.*, d.deptname
from Emp e
full join dept d on d.deptid=e.deptid


alter table Emp add Managerid int

select* from emp

update emp set managerid=1 where eid in(2,3,4)
update emp set managerid=5 where eid in(6,7,8)
update emp set managerid=9 where eid in(10,11,12,13)
update emp set managerid=14 where eid in(15,16,17)


--self join

select e.ename as 'Employee', m.ename as 'Manager'
from Emp e,Emp m
where m.eid=e.managerid


create table Product
(
pid int, 
pname varchar(20),

)

create table size
(
psize varchar(20)
)

select* from Product

select* from size
drop table size

insert into Product values(1,'T-shirt')
insert into Product values(2,'Shirt')
insert into Product values(3,'Mobile')
insert into Product values(4,'car')
insert into Product values(5,'furniture')

insert into size values('XL')
insert into size values('L')
insert into size values('M')
insert into size values('XXL')
insert into size values('XXXL')

select * from size

select* from Product cross join size

create table colour
(
pcolour varchar(20)
)

insert into colour values('red')
insert into colour values('yellow')
insert into colour values('blue')
insert into colour values('green')
insert into colour values('pink')

select* from colour

select* from Product cross join colour cross join size

select max(salary) as 'Maximum salary' from Emp

select min(salary) as 'Minimum salary ' from emp

select count(ename) as 'Total employee' from emp

select COUNT(distinct country) as 'Total country ' from emp

select avg(salary) as 'Average salary ' from emp

select sum(salary) as 'total salary' from emp