-- Indexing

-- 1. primary index
-- when we create table automatically primary key will be as index
CREATE TABLE Student (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,   -- Primary Index (Clustered)
    StudentName VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE,                  -- Unique Index
    CourseID INT,
    Marks INT,
    AdmissionDate DATE
);

-- insert the values into students table
INSERT INTO Student (StudentName, Email, CourseID, Marks, AdmissionDate) VALUES
('Archana', 'archana@student.com', 101, 85, '2022-06-15'),
('Vinay',   'vinay@student.com',   102, 92, '2021-03-20'),
('Kiran',   'kiran@student.com',   101, 78, '2023-01-10'),
('Priya',   'priya@student.com',   103, 95, '2020-12-05'),
('Rahul',   'rahul@student.com',   102, 65, '2022-08-18'),
('Sneha',   'sneha@student.com',   104, 88, '2019-09-25');

-- view the table
select * from student;

-- 2. Unique index
create unique index idx_unique_email
on student(email);

select * from student
where email = 'sneha@student.com';

-- 3. simple index
create index idx_studentname
on student(studentname);

-- 4.composite index
create index idx_name_marks
on student(studentname,marks);

-- 5. cluster inex
-- it is a primary key

-- 6. non clustered index
create index idx_salary
on student(marks);

-- 7. FUll Text index
create fulltext index idx_name
on student (studentname);

select * from student
where match(studentname) against ('vinay');

-- 8. HAsh index --> MySQL memory engine  only work with = not in comparision



show index from student;
