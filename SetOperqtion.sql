-- Set Operation

-- 1. Union
select deptid from employees
union
select deptid from departments;

-- 2. union All
SELECT DeptID FROM Employees
UNION ALL
SELECT DeptID FROM Departments;


-- 3. Intersect --> not directly work in the MYSQL
select deptid from employees
where deptid in (SElect deptid from departments);

-- 4.Except / mimus --> not directly work in the MYSQL
select deptid from employees
where deptid not in (SElect deptid from departments);

-- or we can write like this also
SELECT DeptID FROM Employees e
LEFT JOIN Departments d
using(deptid)
WHERE d.DeptID IS NULL;


