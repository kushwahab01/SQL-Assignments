select* from sys.databases

use Skillmine1

select* from INFORMATION_SCHEMA.TABLES

use skillmine

-- 1.Show list of students. List contains roll no , student name , course name , trainer name in 
--order of course name and student name.

select* from Student
select* from Course
select* from Trainer

select s.roll_no, s.sname, c.course_name, t.trainer_name from
Student s inner join Course c on s.course_id=c.course_id inner join Trainer t on c.trainer_id=t.trainer_id
order by c.course_name,s.sname

--2. Show list of students who have pending fees more than 1000rs . List should have student 
--name , course name , balance fees . Show this list in descending order of balance fees. 

select s.sname, c.course_name,(c.total_fees-s.fees_paid) as 'balance fees' from 
Student s inner join Course c on s.course_id= c.course_id and (c.total_fees-s.fees_paid)>1000 
order by 'balance fees' desc

--3. Append letter ‘_spl’ to all batch ids of trainer ‘Aniket’

update Student set sname='_spl'+sname where course_id in (select course_id from Trainer where trainer_name='Aniket sir' )

--
