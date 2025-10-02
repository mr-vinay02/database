-- insert record into dept
insert into dept values (101,'sales');

-- insert into specified columns
insert into dept (departmentID , departmentName)
values (102 , 'HR');

-- insert into multiple columns
insert into dept (departmentID , departmentName)
values
(103,'Analytics'),
(104,'Manager');


-- update row 
update dept set departmentid = 1 
where departmentid = 101;

-- update column
update dept  set departmentid = 2, departmentName = 'HRs'
where departmentname = 'HR';

-- update entire column
update dept set departmentname = 'Employees';

-- deleting the records
delete from dept where departmentid = 1;
delete from dept;

-- select Query
select * from dept;

