create schema nairobi_academy;
show search_path;
set search_path = 'nairobi_academy';

create table Students(student_id INT primary key,
First_name varchar(50) not null,
last_name varchar(50) not null,
gender char(1),
date_of_birth date,
Class char(6),
city varchar(50));

select* from Students;

insert into Students(student_id,first_name,last_name,gender,date_of_birth,class,city)
values
(1,'Amina','Wanjiku','F','2008-03-12','form 3','Nairobi'),
(2,'Brian','Ochieng','M','2007-07-25','Form 4','Mombasa'),
(3,'Cynthia','Mutua','F','2008-11-25','Form 3','Kisumu'),
(4,'David','Kamau','M','2007-02-18','Form 4','Nairobi'),
(5,'Esther','Akinyi','F','2009-06-30','Form 2','Nakuru'),
(6,'Felix','Otieno','M','2009-09-14','Form 2','Eldoret'),
(7,'Grace','Mwangi','F','2008-01-22','Form 3','Nairobi'),
(8,'Hassan','Abdi','M','2007-04-09','Form 4','Mombasa'),
(9,'Ivy','Chebet','F','2009-12-01','Form 2','Nakuru'),
(10,'James','Kariuki','M','2008-08-17','Form 3','Nairobi');

create table Subjects(subject_id int primary key,subject_name varchar(50) not null unique,departments varchar(50),
teacher_name varchar(50),credits int);

insert into subjects(subject_id,subject_name,departments,teacher_name,credits)
values 
(2,'English','Languages','Ms.Adhiambo','3'),
(3,'Biology','Sceinces','Ms.Otieno','4'),
(4,'History','Humanities','Mr.Waweru','3'),
(5,'Kiswahili','Languages','Ms.Nduta','3'),
(6,'Physics','Sciences','Mr.Kamande','4'),
(7,'Geography','Humanities','Ms.Chebet','3'),
(8,'Chemistry','Sceinces','Ms.Muthoni','4'),
(9,'Computer studies','Sciences','Mr.Oduya','3'),
(10,'Business studies','Humanities','Ms Wanagri','3');

select* from Subjects;


create table exam_results(result_id int primary key,student_id INT not null,
subject_id INT not null,marks int not null,exam_date date,grade char(1) not null);

insert into exam_results(result_id,student_id,subject_id,marks,exam_date,grade)
values
(1,1,1,78,'2024-03-15','B'),
(2,1,2,85,'2024-03-16','A'),
(3,2,1,92,'2024-03-15','A'),
(4,2,3,55,'2024-03-17','C'),
(5,3,2,49,'2024-03-16','D'),
(6,3,4,71,'2024-03-18','B'),
(7,4,1,88,'2024-03-15','A'),
(8,4,6,63,'2024-03-19','C'),
(9,5,5,39,'2024-03-20','F'),
(10,6,9,95,'2024-03-21','A');

select * from exam_results;


alter table Students
add column phone_number VARCHAR(20);

alter table subjects
rename column credits to credit_hours;

alter table students
drop column phone_number;

update students
set city='Nairobi'
where student_id=5;

update exam_results
set marks=59
where result_id=5;

delete from exam_results
where result_id=9;

select* from Students;
select* from subjects;
select * from exam_results;

---Querying the data(Filtering with where clause)
select first_name,last_name,gender,date_of_birth,class,city from students
where class= 'Form 4';
update students
set class='Form 4'
where student_id=2; ---i had not standardize the class data entry (Form 4)

select subject_name,departments,teacher_name from subjects
where departments='Sciences';

update subjects
set departments='Sciences'
where subject_id in(1,3,8);---standardizing the departments data entry

select student_id,subject_id,marks,exam_date,grade from exam_results
where marks>=70;

select first_name,last_name,gender,date_of_birth,class,city from students
where gender='F';

select* from Students;
select* from subjects;
select * from exam_results;

select first_name,last_name,gender,date_of_birth,class,city from students
where class='Form 4'and city='Nairobi';
select first_name,last_name,gender,date_of_birth,class,city from students
where class='Form 2'or class='Form 4';

---between,IN/not in,like,COUNT,and case WHEN
 select* from exam_results
 where marks between 50 and 80;
select* from exam_results
where exam_date between'2024-3-14'and'2024-3-18';

select* from students
where city in('Nairobi','Mombasa''Kisumu');

select* from students 
where class not in('Form 2','Form 3');
-- update students 
 --set class='Form 3'
 --where student_id=1;  --standardizing the class column data entry
 
 select* from students
 where first_name like'A%'or first_name like'E%';
 
 select* from subjects
 where subject_name like'%studies%';
 
   ---count
 select* from Students;
select* from subjects;
select * from exam_results;

select count(class) from students
where class='Form 3';

--How many exam results have a mark of 70 or above? Write the query.

select count(marks) from exam_results
where marks>=70;



----case when
 ---count
 select* from Students;
select* from subjects;
select * from exam_results;

--alter table exam_results
--add column Perfomance varchar(30);

--alter table exam_results
--drop column perfomance;

 select result_id,student_id,subject_id,marks,exam_date,grade,
case
when marks>=80 then 'Distinction'
when marks>=60 then 'Merits'
when marks>=40 then 'Pass'
when marks<40 then 'Fail'
end as Perfomance
from exam_results;

select student_id,first_name,last_name,gender,date_of_birth,class,city,
case
when class in('Form 3','Form 4') then 'Senior'
when class in('Form 1','Form 2') then 'Junior'
end as student_level
from students;








 
 
 














 


