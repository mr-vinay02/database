-- work with joins

-- Retrieve all books along with their authors
select book_id , title , first_name , last_name 
from books 
join authors
using (author_id);

-- Find all books currently on loan along with member details:
select book_id , title , first_name , last_name
from books 
join loans
using (book_id) 
join members using (member_id )
where actual_return_date is null ; 

--  List all books borrowed by a specific member
select book_id , title , member_id , first_name , last_name
from books
join loans using (book_id)
join members using (member_id )
where member_id = 2;

-- Get the total number of books and the total available copies for each genre
select genre ,count(*) as "total books", sum(available_copies) as quantity
from books
group by genre ;

-- Find all staff members who are librarians and their hire dates:
select staff_id , first_name , last_name ,  job_title , hire_date 
from staff
where  job_title = 'Librarian' ;



