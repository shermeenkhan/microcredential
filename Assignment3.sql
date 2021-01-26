/*
--1. Create a list of employee names and their full addresses using the INNER JOIN.
select e.firstname, e.lastname, a.addressline1, a.addressline2, a.city, a.state, a.zip1, a.zip2
from employees e
inner join addresses a on e.employeeid=a.employeeid


--2. Create a list of employee names and their full addresses using the INNER JOIN for employees who live either in Massachusetts or California.
select e.firstname, e.lastname, a.addressline1, a.addressline2, a.city, a.state, a.zip1, a.zip2
from employees e
inner join addresses a on e.employeeid=a.employeeid
where upper (a.state) ='MA' or upper (a.state) = 'CA'


--3. Create an example of a Cartesian product using the Employees and Addresses table.
select e.employeeid, e.firstname, e.lastname, a.addressline1, a.addressline2, a.city, a.state, a.zip1, a.zip2
from employees e
cross join addresses a


--4. Use a LEFT OUTER JOIN to list all employee first and last names as well as the gender and birthdates of their dependents if they have any.
select e.employeeid, e.firstname, e.lastname, d.gender, d.birthdate
from employees e
left outer join dependents d on e.employeeid = d.employeeid


--5. Use a RIGHT OUTER JOIN to list all employee first and last names as well as the gender and birthdates of their dependents if they have any (Same as above but change location of tables).
select e.employeeid, e.firstname, e.lastname, d.gender, d.birthdate
from employees e
right outer join dependents d on e.employeeid = d.employeeid


--6. Use a SELF JOIN to select the employee first name, last name, title as well as the manager's first name, last name and title.
select e.firstname, e.lastname, e.title, e.managerid, m.firstname, m.lastname
from employees e
inner join employees m
on m.managerid = e.employeeid
order by e.employeeid


--7. Retrieve the employee first name, last name, department name and group name for the employee named Gail Erickson.
select e.firstname, e.lastname, d.departmentname, d.groupname
from employees e
inner join employeesdepartments ed
on e.employeeid=ed.employeeid
inner join departments d
on ed.employeeid=d.departmentid
where e.firstname='Gail' and e.lastname='Erickson'


-- 8. Retrieve the employee first name, last name, address, city, state, zip, department name and group name for the employee named David Bradley.
select e.firstname, e.lastname, d.departmentname, d.groupname
from employees e
inner join employeesdepartments ed
on e.employeeid=ed.employeeid
inner join departments d
on ed.employeeid=d.departmentid
where e.firstname='David' and e.lastname='Bradley'


-- 9. Retrieve the employee first name, last name, dependent first name, last name and gender for female dependents.
select e.firstname, e.lastname, d.firstname, d.lastname, d.gender
from employees e
inner join dependents d
on e.employeeid=d.employeeid
where d.gender = 'F'


-- 10. Retrieve the employee first name, last name, dependent first name, last name, birth date for dependents who have birth dates less than or equal to 11/02/2008. 
select e.firstname, e.lastname, d.firstname, d.lastname, d.gender
from employees e
inner join dependents d
on e.employeeid=d.employeeid
where d.birthdate >= '11/02/2008'


--11. Use LEFT OUTER JOINS to list all Employees, their Department Names, and their dependent names, if any.
select * 
from employees e, dependents d
left outer join employeesdepartments ed
on e.employeeid=ed.employeeid
left outer join departments d
on ed.employeeid=d.departmentid


--12. Use RIGHT OUTER JOINS to list all Employees, their Department Names, and their dependent names, like you did in the question above.
from employees e, dependents d
right outer join employeesdepartments ed
on e.employeeid=ed.employeeid
right outer join departments d
on ed.employeeid=d.departmentid


--13. Retrieve the employee first name, last name, dependent first name, last name and gender for dependents who were born in or before 1998.
select e.firstname, e.lastname, d.firstname, d.lastname, d.gender, d.birthdate
from employees e
inner join dependents d
on e.employeeid=d.employeeid
where d.birthdate <= '01/01/1998'


--14. Retrieve all employees belonging to the department “Marketing” using INNER JOINS.
select e.firstname, e.middlename, e.lastname, d.departmentname
from employees e
inner join employeesdepartments ed on ed.employeeid = e.employeeid
inner join departments d on ed.departmentid=d.departmentid
where d.departmentname='Marketing'


--15. Retrieve the first name, last name, and title of the manager responsible for the Employee with the first name “Ben” and last name “Miller”.
select e.firstname, e.lastname, e.title, e.managerid, m.firstname, m.lastname
from employees e
inner join employees m
on m.managerid = e.employeeid
where e.firstname='Ben' and e.lastname='Miller'
*/

