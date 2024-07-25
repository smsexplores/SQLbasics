select * from emp_details

select * from employee

select * from department

update emp_details
set lastname = 'Rahmann'
where employeeid = 1008
/*joins tablecannot be updated orinserted as there are multiplebase tables
insert into emp_dept_details
values(1010,'Ashwin','Nambi',16,'IT')

select * from emp_dept_details

update emp_dept_details
set DepartmentName = 'IT'
where employeeid = 1001

delete from emp_dept_details
where employeeid = 1001*/

delete from emp_details
where employeeid = 1001
/*joins tablecannot be updated orinserted as there are multiplebase tables
alter view emp_dept_details as
select d.DepartmentName, count(*) as no_of_employees
from employee e
join department d
on e.DepartmentID = d.DepartmentID
group by d.DepartmentName

update emp_dept_details
set no_of_employees = 3
where DepartmentName = 'IT'

alter view emp_dept_details as
select distinct e.FirstName, d.DepartmentName
from employee e
join department d
on e.DepartmentID = d.DepartmentID

select * from emp_dept_details

update emp_dept_details
set DepartmentName = 'IT'
where FirstName = 'Gokul'*/

drop view emp_dept_details /* to delete the views file*/


CREATE LOGIN test_login WITH PASSWORD = 'test123';

create user test_user for login test_login

Grant select on emp_details to test_user