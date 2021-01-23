/*
select * from department;
select * from physician ;
select * from affiliated_with;
select * from patient;
select * from nurse;
select * from appointment

#finding general medicine doctors name
select physician.name, affiliated_with.department, department.name from physician
join affiliated_with 
join department 
on department.departmentid= affiliated_with.department
on affiliated_with.physician = physician.employeeid
where affiliated_with.department = 2


#finding patient-doctor visit
select patient.name patient_name, pcp.name doctor_name from patient
join physician pcp
on patient.pcp = pcp.employeeid



#finding room details
select * from room;
select unavailable, count(*) from room
group by unavailable


#total patient count on blockade=2
select count(*) from room where blockcode=2


#checking procedure details
select * from undergoes

#hospital workload information
select physician.name as doctor_name, nurse.name as nurse_name, undergoes.dateundergoes as proceduretime
from physician 
join nurse 
join undergoes 
on nurse.employeeid= undergoes.assistingnurse
on physician.employeeid = undergoes.physician
where undergoes.physician=3


#checking medication and prescription details
select * from medication;
select patient.name, prescribes.dose, medication.name, medication.brand from patient 
join prescribes 
join medication 
on medication.code = prescribes.medication
on patient.ssn = prescribes.patient

#trained in procedure counts
select * from procedures;
select * from trained_in;
select treatment, count(*) from trained_in group by treatment

*/