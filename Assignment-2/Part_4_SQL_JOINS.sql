---Section D:SQL JOINS
--Name:JOSEPH-MWANGI
--Date: 2026-04-19

---Q1)Show each appointment with patient name, doctor name, appointment date, and diagnosis using INNER JOIN
---Q2)Display all patients and include appointment date and diagnosis if available, otherwise NULL (LEFT JOIN)
---Q3)Show all doctors and include patient names if they have appointments, otherwise NULL (RIGHT JOIN)
---Q4)Find patients who have never had an appointment, showing their full name and city
---Q5)Display each appointment with patient name, doctor name, and prescribed medicine using a three-table INNER JOIN



set  search_path to city_hospital;
select* from departments;
select * from doctors;
select * from patients;
select * from appointments;
select * from prescriptions;
 
--inner join appointment patients full_name, doctors full name,,the appointments dates diagnnosis

select a.appointment_id ,
a.diagnosis,
a.appt_date,
d.full_name,
p.full_name
from appointments a
inner join patients p on a.patient_id = p.patient_id
inner join doctors d on a.doctor_id=d.doctor_id;

---left joining all patients with appointment table(diagnosis,appointment_date)

select 
p.full_name,
a.appt_date,
a.diagnosis
from patients p
left join appointments a on a.patient_id = p.patient_id;

----right join show all doctors,patient name,*****

select 
d.full_name,
p.full_name,
a.appointment_id
from appointments a
right join doctors d  on a.doctor_id=d.doctor_id
left join patients p on a.patient_id = p.patient_id;

-----left join  and where is null to show all patient who have never had an appointment

select 
p.full_name,
p.city,
a.appointment_id
from patients p
left join appointments a on a.patient_id=p.patient_id
where appointment_id is null;

-----INNER JOIN APPOINTMENT ;PATIENT_NAME,DOCTOR_NAME,MADECINE_PRESCRIBED
set  search_path to city_hospital;
select* from departments;
select * from doctors;
select * from patients;
select * from appointments;
select * from prescriptions;



select 
a.appointment_id,
p.full_name as patient_name,
d.full_name as doctor_name,
pr.medicine_name
from appointments a
inner join patients p on a.patient_id= p.patient_id
inner join doctors d on a.doctor_id= d.doctor_id
inner join prescriptions pr on pr.appointment_id=a.appointment_id;
