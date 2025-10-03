-- Function in SQL
-- A function is like a stored procedure, but with some differences.
-- It always returns a value (scalar or table)

-- 2 types --> 1. Build in function --> 2.User-Defined Functions (UDFs)

-- User-Defined Functions (UDFs)

-- syntax for the user define function

DELIMITER $$ 
create Function Function_name()
returns  int                        -- (datatype)--> char ,int ect....
Deterministic                       -- retruns the values
Begin
		-- SQL statement
        return value;
END $$
DELIMITER ;


-- lets create a function for the count of the students in the student table
-- this is a incorrect for the creating the function
Delimiter $$
create function getStudentCount()
returns int
deterministic
begin 
		declare totalCount int;
		select count(*) into totalcount from studentCount;
        return totalCount;
end $$ 
Delimiter ;

-- drop the function
DROP FUNCTION IF EXISTS getStudentCount;


-- create the function with correct 
-- no parameter
Delimiter $$
create function getStudentCount()
returns int
deterministic
begin 
		declare totalCount int;
		select count(*) into totalCount from student;
        return totalCount;
end $$ 
Delimiter ;

-- calling the function
select getStudentCount();


-- creating the function with parameter
-- give the course id as a input
Delimiter $$ 
create function getAverageMarksByCourseID(CourseID int)
returns decimal(5,2)
deterministic
begin
		-- writing a query to the avarage of the marks by the cousreid
        declare avgMarks decimal(5,2); 
        select avg(marks) into avgMarks from student 
        where courseId = CourseID;
        return avgMarks;
end $$ 
delimiter ;

select getAverageMarksByCourseID(101); 

        





