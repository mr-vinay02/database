-- creating a table\
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100) NOT NULL,
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE
);

-- inserting records
INSERT INTO Employee (EmpID, EmpName, Department, Salary, HireDate)
VALUES
(101, 'Alice Johnson', 'HR', 50000, '2020-05-10'),
(102, 'Bob Smith', 'IT', 65000, '2019-07-15'),
(103, 'Charlie Brown', 'Finance', 70000, '2021-01-20'),
(104, 'Diana Prince', 'IT', 72000, '2018-11-25'),
(105, 'Ethan Hunt', 'Marketing', 48000, '2022-03-18');

-- viewing all the records
select * from employee;

-- counting the number of the employee
select count(*) as "total Employee" from employee;

-- calculating the sum of the salary
select sum(salary) as salary from employee;

-- finding the max salary
select max(salary) from employee;

-- finding the min salary
select min(salary) from employee;

-- finding the avg salary
select avg(salary) from employee;