--- window functions
set search_path to nairobi_academy;

select * from  students;
select * from exam_results;
select * from subjects;
-----row_num
 select result_id,
 student_id,
 subject_id,
 marks,
 row_number() over(order by marks desc)as row_num
 from exam_results;
 ----rank and dense_rank
 select*,
 rank() over(order by marks desc)as marks_rnk,
 dense_rank() over(order by marks desc) as marks_dense_rnk
 from exam_results;

----ntile

select
 result_id,
 marks,
 ntile(3) over(order by marks desc) as trippled_grouped_mrks,
 case
when ntile(3) over(order by marks desc)= 3 then 'bottom'
when ntile(3) over(order by marks desc)= 2 then 'middle'
when ntile(3) over(order by marks desc)= 1 then 'top'
end as marks_band
from exam_results;


----avg exam_results partition by student_id and round to 2
select student_id,
marks,
round(avg(marks) over(partition by student_id),2)
from exam_results;

----LAG TO SHOW EXAM RESULTS ALONGSIDE PREVIOUS RESULTS
select student_id,
marks as current_marks,
lag(marks) over(partition by student_id) as previous_mark,
marks - lag(marks) over(partition by student_id) as improvement
from exam_results;
