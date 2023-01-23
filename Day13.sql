select* from sys.databases
create database d1
EXEC sp_rename d1, datab

alter database d1 modify name=datab

use datab

drop database mom

select* from INFORMATION_SCHEMA.TABLES
use skillmine

select* from INFORMATION_SCHEMA.TABLES

select * from emp INFORMATION_SCHEMA.COLUMNS where ename='HR'

select* from INFORMATION_SCHEMA.TABLES

select* from NEWTAB
select* from NEWTAB1

alter table Newtab add city varchar(20)
alter table newtab drop column city
alter table newtab alter column last_name char(20)
sp_rename 'newtab.department','dept'

