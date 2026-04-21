---Section A:String Functions
--Name:JOSEPH-MWANGI
--Date: 2026-04-19

---Q1)Display each student's full name in uppercase and their city in lowercase.
---Q2)Retrieve each student's first name and the length of that first name, ordering from longest to shortest.
----Q3)Show each subject's name along with the first four characters of the name (as a shortened version) and the length of the full name.
---Q4)Use CONCAT to create a sentence summarizing each student's name, form, and city.


show search_path;
set search_path to nairobi_academy;

select * from  students;
select * from exam_results;
select * from subjects;

----Strings Functions

----Display each students full name and their city(uppercase)

select *,
concat(upper(first_name),'-',Upper(last_name)) as upper_name,
lower(City) as lower_city
from students;

---show each students first_name,length and order results from the longest to the shortest.

select First_name,
 length(first_name) as name_length
 from students
order by name_length desc;

--subjects name short version (4 char) of the subject name first name length.

select subject_name,
 substr(subject_name,1,4) as short_name,
 length(subject_name) as subject_name_length
 from subjects
order by subject_name_length desc;

--- using concat a sentence for each student full_name ,last_nameplus class plus 

select student_id, 
concat(first_name,'-',last_name,' ','is in ',class,' and', ' comes',' from ',city) as student_summary
from students;

select * from  students;
select * from exam_results;
select * from subjects;