create table EmpLog(
logid int primary key identity(1,1),
descriptin varchar(500)
)

create trigger tr_Employee_insert
on emp	for insert
as begin
declare @eid int
select @eid=eid from inserted
insert into EmpLog values('new record with id'+ cast(@eid as varchar(10))+'Add at'+cast(GETDATE() as varchar(30)))
end

select* from Emp
select * from EmpLog
insert into Emp values(18,'ramesh',25,'India',105,9687965845,50000,5)



