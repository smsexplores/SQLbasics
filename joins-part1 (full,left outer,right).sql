create table employee
(
EmployeeID integer PRIMARY KEY,
FirstName varchar(200),
LastName varchar(200),
DateOfBirth Date,
Gender char(1),
DepartmentID integer
)

insert into employee
values(1001,'Aishwarya','Jayaram','2005-04-24','F',11),
(1002,'Anand','Venkat','2005-05-22','M',12),
(1003,'Bala','Sundaram','2004-11-02','M',13),
(1004,'Deepa','Mani','2004-12-09','F',11),
(1005,'Deepa','Mahesh','2005-05-29','F',14),
(1006,'Gokul','Ram','2004-11-27','M',13),
(1007,'Shreya','Gopi','2005-06-20','F',17),
(1008,'Abdul','Rahman','2005-07-30','M',18)

select * from employee

create table department
(
DepartmentID integer,
DepartmentName varchar(100)
)

insert into department
values(11,'Engineering'),
(12,'Finance'),
(13,'Sales'),
(14,'Marketing'),
(15,'Human Resources'),
(16,'IT')

select * from department

/* joins*/

select e.employeeID,e.Firstname,e.gender,d.departmentname
from employee e join department d on
e.departmentid=d.departmentid

/* left join*/
select e.employeeID,e.Firstname,e.gender,d.departmentname
from employee e left join department d on
e.departmentid=d.departmentid


/*right join*/
select e.employeeID,e.Firstname,e.gender,d.departmentname
from employee e right join department d on
e.departmentid=d.departmentid

/*full join*/
select e.employeeID,e.Firstname,e.gender,d.departmentname
from employee e full join department d on
e.departmentid=d.departmentid
