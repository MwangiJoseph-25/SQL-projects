---Section C:DATE & TIME Functions
--Name:JOSEPH-MWANGI
--Date: 2026-04-19


--Q1)Display each student’s first name with their birth year, month, and day as separate columns.
--Q2)Show each student’s full name, date of birth, and age in years, ordered from oldest to youngest.
--Q3)Show each student’s full name, date of birth, and age in years, ordered from oldest to youngest.


show search_path;
set search_path to nairobi_academy;

select * from  students;
select * from exam_results;
select * from subjects;

---date $ Time fuctions
---birth_year,month,day

select first_name,
TO_CHAR(date_of_birth,'DD') as birth_day,
TO_CHAR(date_of_birth,'MONTH') as birth_month,
TO_CHAR(date_of_birth,'YYYY') as birth_year
from students;


---STUDENT FULL_NAME,DATE_OF_BIRTH,AGE
select 
concat(first_name,' -',last_name)as student_fullname,
date_of_birth,
EXTRACT(year from age(date_of_birth)) as age_years
from STUDENTS
order by age_years desc;

---exam date in 'friday,15th march 2025'
select exam_date,
TO_CHAR(exam_date,'day,ddth month yyyy')as formatted_date
from exam_results;
