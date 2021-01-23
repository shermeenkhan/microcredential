/* 

Adding Affiliated with Values
insert into affiliated_with
values ('10', '3', 'true')

Checking affiliated additions
select * from affiliated_with

Checking procedures before
select * from procedures

Inserting procedures after checking
insert into procedures
values ('8', 'Stent Implantation', '3400')

Checking procedures after
select * from procedures

#Checking trained_in before
select * from trained_in

#insert into trained_in
values ('8', '5', '2008-01-01 00:00:00', '2008-12-31 00:00:00')
#Checking trained_in after
select * from trained_in

select * from patient;
insert into patient 
values ('101010292', 'Mary Goldsmith', '43 Putnam Street', '422-4522', '2938371', '8');
select * from patient

select * from nurse;
insert into nurse 
values ('104', 'Mariana Gurerrea', 'Head Nurse', 'True', '29829182');
select * from nurse


select * from appointment;
insert into appointment
values ('293940291', '101010292', '102', '8', '2008-04-24 10:00:00', '2008-04-24 10:00:00', 'C')
select * from appointment

select * from medication;
insert into medication
values ('6', 'Atorvastatin', 'Sunny Pharms', 'N/A')

select * from prescribes;
insert into prescribes
values ('8', '293940291', '2008-04-24 10:47:00', '101010292', '5')

select * from block;
insert into block
values ('8', '3')


select * from On_Call;
insert into on_call
values ('103', '1','1', '2008-11-04 11:00:00', '2008-11-04 19:00:00' )


select * from stay;
insert into stay
values ('3218', '101010292', '112', '2008-11-04 11:00:00', '2008-11-04 19:00:00')


select * from undergoes;
insert into undergoes
values ('101010292', '6', '3215', '2008-11-04 11:00:00', '8', '102')
*/
