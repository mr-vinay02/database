-- DML Commands


-- 1. add column publisher to the table books
alter table books add column publisher varchar(100);


-- 2. Rename the position column in the staff table to job_title
alter table staff change  position  job_title varchar(50) ;

-- 3.drop the email column from the members table:
alter table membersmembersmembers
drop column email ;