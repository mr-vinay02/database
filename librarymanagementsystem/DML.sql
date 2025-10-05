-- DML Commands

-- Insert new data into the books table
insert into books (title , author_id , publication_year , genre , isbn ,available_copies , publisher )
values
('Java', 3, 1997, 'Oracle', '9780061122415', 1, 'vinzzz');


--  Update a member's contact number
update members set  contact_number = '9901224630' where member_id = 2 ;

-- Delete a specific loan record
delete from loans where loan_id = 4;

-- Insert a new loan record
insert into loans ( loan_id , book_id , member_id , loan_date , return_date ,actual_return_date )
values
(6, 3, 2, '2023-10-05', '2023-10-19', NULL);