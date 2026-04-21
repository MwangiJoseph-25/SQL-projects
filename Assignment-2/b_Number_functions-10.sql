
show search_path;
set search_path to nairobi_academy;

select * from  students;
select * from exam_results;
select * from subjects;

----Number Functions
--Round,ceil,floor students marks
 select result_id,marks,
 round(marks/10.0,1)as round_mark,
 ceil(marks/10.0) as ceil_marks,
 floor(marks/10.0) as floor_marks
 from exam_results;

---max min avg count of marks results.
select
count(marks)as number_results,
round(avg(marks),2)as avg_marks,
max(marks)as highest_marks,
min(marks)as lowest_marks,
sum(marks)as total_marks
from exam_results;

---10% bonus of marks.

select result_id,
marks as original_marks,
round(marks+(marks*0.1)) as boosted_mark
from exam_results;
