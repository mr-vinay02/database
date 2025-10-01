-- creating the schema 
Create schema mytrainee;

-- check databse
SHOW DATABASES;

-- making the use of the created schema
use mytrainee;


-- creating the table departmrnt
create table department(
deptid int primary key,
deptname varchar(50) not null
);

-- adding column to created table 
alter table department add location varchar(50);

-- used to see the table structure
Select * from department;

-- rename the column
alter table department rename column deptname To departmentName;
alter table department rename column deptid To departmentID;

-- droping the column
alter table department drop location;

-- rename table department To dept
rename table department to dept;

-- used to see the table structure
Select * from dept;

-- truncate table dept:deleting the records from tables
truncate table dept;

-- adding the comment to the table
alter table dept comment = 'This is a DDL commands';

-- creating the another table with the foreign key of the deptid
create table Employees (
empid int ,
empnaame varchar(200) not null,
empsalary decimal(10,2),
deptid int ,
constraint  pk_empid primary key (empid),
constraint fk_deptid foreign key(deptid) references dept(departmentid)
);





