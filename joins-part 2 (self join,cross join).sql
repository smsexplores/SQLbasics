create table emp
(
EmployeeID integer PRIMARY KEY,
FirstName varchar(200),
LastName varchar(200),
DateOfBirth Date,
Gender char(1),
ManagerID integer
)

insert into emp
values(1001,'Aishwarya','Jayaram','2005-04-24','F',1002),
(1002,'Anand','Venkat','2005-05-22','M',1003),
(1003,'Bala','Sundaram','2004-11-02','M',1007),
(1004,'Deepa','Mani','2004-12-09','F',1007),
(1005,'Deepa','Mahesh','2005-05-29','F',1007),
(1006,'Gokul','Ram','2004-11-27','M',1001),
(1007,'Shreya','Gopi','2005-06-20','F',1002),
(1008,'Abdul','Rahman','2005-07-30','M',NULL)

/*Self join*/

select e1.EmployeeID,e1.FirstName,e1.LastName,e1.ManagerID,
e2.FirstName + ' '+ e2.LastName as ManagerName
from emp e1
join emp e2
on e1.ManagerID=e2.EmployeeID


select e1.EmployeeID,e1.FirstName,e1.LastName,e1.ManagerID,
e2.FirstName + ' '+ e2.LastName as ManagerName
from emp e1
left join emp e2
on e1.ManagerID=e2.EmployeeID


/* Cross Join known as cartesian record*/
select e1.FirstName + ''+ e1.LastName as emp1name,
e2.FirstName + ' '+ e2.LastName as emp2name
from emp e1
cross join emp e2
where e1.EmployeeID<> e2.EmployeeID
