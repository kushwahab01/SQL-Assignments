use skillmine

--Convert Uppercase string

select UPPER(ename) as upperEmp from Emp

--convert lover case

select LOWER(ename) as LowerEmp from Emp

--using substring

select SUBSTRING(ename,1,3) from Emp

--to find Length

select LEN(ename )as LengthofEmp from Emp

--trim function

select TRIM(ename) from Emp

--round

select ROUND(salary,1) from Emp

--reverse string

select REVERSE(ename) from Emp

--concatinating two or more string

select CONCAT(ename,'-->',salary) as combine from Emp


--select cureent time to the system
select CURRENT_TIMESTAMP

select GETDATE()

select ISNULL(country,'NA') as country from Emp
select* from Emp

select ISNULL(Managerid,'0') as ManagerID from Emp


SELECT UPPER(LEFT(ename,1))+LOWER(SUBSTRING(ename,2,LEN(ename))) FROM Emp

create function Addition(@a int, @b int)
returns int
as begin
declare @sum int
set @sum = @a+@b
return @sum
end

select dbo.Addition(12,85) as 'Sum'

create function GetEmpNameById(@id int)
returns varchar(20)
as begin 
return(select ename from Emp where eid=@id)
end

select dbo.GetEmpNameById(2) as 'Empname'



create function GetEmpDetails(@id int)
returns table 
as
return (select * from Emp where eid=@id)



select* from dbo.GetEmpDetails(2)



create function GetEmpByDept(@id int)
returns table
as
return (select * from Emp where deptid=@id)


select * from dbo.GetEmpByDept(101)



create function EmpSalaryByEmp(@Esalary int)
returns table 
as
return (select ename, salary, salary*1.15 from Emp where salary= @Esalary)


create function Hike(@salary int)
returns int
as begin
declare @Hike int
set @Hike=@salary*1.15
return @hike
end

select ename, salary, dbo.Hike(salary) as 'Hike salary' from Emp



