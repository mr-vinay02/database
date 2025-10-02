-- joins --> combines 2 ot more tables
-- select col1,col2......
-- from table1 
-- join table2 
-- on table1.col = table2.col ;

-- creates required table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    Salary DECIMAL(10,2)
);

INSERT INTO Employees (EmpID, EmpName, DeptID, Salary) VALUES
(1, 'Alice', 101, 50000),
(2, 'Bob', 102, 60000),
(3, 'Charlie', 103, 55000),
(4, 'David', 101, 70000),
(5, 'Eva', NULL, 65000);

-- second table
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

INSERT INTO Departments (DeptID, DeptName) VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing');

-- inner join

-- type 1
select * from employees emp 
join departments dept
on emp.deptid = dept.deptid ;

-- type 2 
select * from  employees
join departments 
using (deptid) ;

-- left join
select * from employees
left join departments 
using (deptid) ;

-- right join
select * from employees
right join departments 
using (deptid) ;

SELECT e1.EmpName AS Emp1, e2.EmpName AS Emp2, e1.DeptID
FROM Employees e1
JOIN Employees e2
ON e1.DeptID = e2.DeptID
AND e1.EmpID <> e2.EmpID;
