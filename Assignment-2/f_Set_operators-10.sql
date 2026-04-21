
set  search_path to city_hospital;
select* from departments;
select * from doctors;
select * from patients;
select * from appointments;
select * from prescriptions;

---set operators
----union (city from patients and city from students)
select 
city,'city_students' as location_type from students
union 
select
city,'city_patients' as location_type from city_hospital.patients
order by city;



 --union all(first_names from students and full_names from patients)
 select 
 first_name,'student_name' as source from students
 union all
 select 
 full_name,'patient_name' as source from city_hospital.patients
 order by source;

 
 ----intersect cities that are home to both students and patients
 
 select 
city from students
intersect
select
city from city_hospital.patients
order by city;
 select
 full_name,'patient' as source_label from city_hospital.patients
 union all
select 
concat(first_name,'-',last_name),'students' as source_label from students
 union all
select 
 full_name,'Doctor' as source_label from city_hospital.doctors
  order by source_label,full_name;
