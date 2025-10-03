-- subquery

-- 1.Single row SubQuery

SELECT EmpName, Salary
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);

-- 2.Multi row Subquery

-- IN
SELECT EmpName, DeptID
FROM Employees
WHERE DeptID IN (SELECT DeptID FROM Departments WHERE DeptName IN ('HR','Finance'));

-- ANY
SELECT EmpName, Salary
FROM Employees
WHERE Salary > ANY (SELECT Salary FROM Employees WHERE DeptID=102);

-- ALL
SELECT EmpName, Salary
FROM Employees
WHERE Salary > ALL (SELECT Salary FROM Employees WHERE DeptID=102);

-- 3.correlated subquery
SELECT EmpName, Salary, DeptID
FROM Employees e
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
    WHERE DeptID = e.DeptID
);


-- 4.sub Query in From clause

select deptid , max(salary) as "max salary" from 
(select * from Employees ) as temp 
group by deptid;

-- 5. subquery in select clause
select empname , salary , 
(select avg(salary) from employees) as avgsalary
from employees;

