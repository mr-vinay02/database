-- stored procedure

-- it is like function in the programminig language

-- syntax of the stored procedure

DELIMITER $$

create procedure procedure_name()

BEGIN

 -- SQL statment 
 
 End $$
 
 DELIMITER ;
 
 
 -- simple procedure for the table student to get all student in the student table
 
 DELIMITER $$  
 
 create procedure getAllStudent()
 
 BEGIN 
 
 select * from student;
 
 END $$ 
 
 DELIMITER ;
 
 
 -- calling statement for the stored procedure called getAllSTudent()
 call getAllStudent(); 
 
 
 -- ex 2 stored procedure with the input parameter
 
 DELIMITER $$ 

create procedure  getStudentByCourse(In courseId int)

 BEGIN

 select * from student
 where CourseID = courseID ;
 
 END $$ 
 
 DELIMITER ;
 
 call getStudentByCourse(101);

-- First drop the old procedure
DROP PROCEDURE IF EXISTS getStudentByCourse;


-- Then create it again with changes
DELIMITER $$ 
CREATE PROCEDURE getStudentByCourse(IN courseId INT)
BEGIN
    SELECT StudentID, StudentName   -- modified: only specific columns
    FROM student
    WHERE CourseID = courseId;      -- fixed case-sensitivity issue
END $$ 
DELIMITER ;

 call getStudentByCourse(101);
 
 -- stored procedure with the out put from this
 
 DELIMITER $$ 
 create procedure getStudentCount(out Count int )
 BEGIN 
		select Count(*) from student ;
  END $$ 
DELIMITER ;

call getstudentCount(@Count); -- call getStudentCount()
select @Count ;   -- Shows the number of students


-- stored procedure with multiple input

DELIMITER  $$ 
create procedure GetStudentsByMarksAndCourse(in marks int , in course int)
begin
		SELECT * from student
        where MArks = marks AND Course = CourseID ;
END $$
DELIMITER ; 

call GetStudentsByMarksAndCourse(45 , 101 );

-- how to manage the stored procedure

-- to view all the procedure
show procedure status where db = 'mytrainee';

-- to see code in the procedure
show create procedure getAllStudent;

-- delete the stored procedure
drop procedure getAllStudent;



       

