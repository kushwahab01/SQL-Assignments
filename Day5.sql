use skillmine

select * from emp

update emp set country=null where eid=5

select * from emp where country is null

SELECT * FROM EMP WHERE country is not null

select * from emp order by age

select * from emp order by age desc

select ename, eid, salary from emp order by ename

select * from emp order by deptid

select ename from emp order by deptid DESC

update emp set country='India' where eid=5

select * from emp

select *from emp
order by salary 
offset 1 row
fetch next 3 row only
