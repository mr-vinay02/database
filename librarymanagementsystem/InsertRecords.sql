-- insert records into all tables

-- authors
INSERT INTO authors (first_name, last_name, date_of_birth, nationality)
VALUES
('George', 'Orwell', '1903-06-25', 'British'),
('J.K.', 'Rowling', '1965-07-31', 'British'),
('Harper', 'Lee', '1926-04-28', 'American'),
('R.K.', 'Narayan', '1906-10-10', 'Indian'),
('Dan', 'Brown', '1964-06-22', 'American');

-- books
INSERT INTO books (title, author_id, publication_year, genre, isbn, available_copies, publisher)
VALUES
('1984', 1, 1949, 'Dystopian', '9780451524935', 5, 'Secker & Warburg'),
('Harry Potter and the Philosopher\'s Stone', 2, 1997, 'Fantasy', '9780747532699', 10, 'Bloomsbury'),
('To Kill a Mockingbird', 3, 1960, 'Fiction', '9780061120084', 7, 'J.B. Lippincott & Co.'),
('Malgudi Days', 4, 1943, 'Short Stories', '9788185986178', 4, 'Indian Thought Publications'),
('The Da Vinci Code', 5, 2003, 'Thriller', '9780385504201', 8, 'Doubleday');


-- members
INSERT INTO members (first_name, last_name, date_of_birth, contact_number, membership_date)
VALUES
('Aarav', 'Sharma', '1999-03-15', '9876543210', '2023-05-01'),
('Meera', 'Patel', '2001-07-22', '9123456789', '2023-06-10'),
('Rohan', 'Das', '1998-11-02', '9988776655', '2023-07-05'),
('Sneha', 'Reddy', '2000-02-19', '9012345678', '2023-08-12'),
('Karan', 'Verma', '1997-09-25', '9098765432', '2023-09-01');

-- loans
INSERT INTO loans (book_id, member_id, loan_date, return_date, actual_return_date)
VALUES
(1, 1, '2023-09-01', '2023-09-15', '2023-09-14'),
(2, 2, '2023-09-05', '2023-09-19', NULL),
(3, 3, '2023-09-10', '2023-09-24', '2023-09-25'),
(4, 4, '2023-09-12', '2023-09-26', '2023-09-26'),
(5, 5, '2023-09-15', '2023-09-29', NULL);

-- staff
INSERT INTO staff (first_name, last_name, job_title, contact_number, email, hire_date)
VALUES
('Priya', 'Nair', 'Librarian', '9876501234', 'priya.nair@library.com', '2022-04-01'),
('Vikram', 'Singh', 'Assistant Librarian', '9876512345', 'vikram.singh@library.com', '2022-05-10'),
('Anita', 'Kumar', 'Clerk', '9876523456', 'anita.kumar@library.com', '2022-07-15'),
('Ravi', 'Menon', 'Library Attendant', '9876534567', 'ravi.menon@library.com', '2023-01-05'),
('Neha', 'Joshi', 'Technician', '9876545678', 'neha.joshi@library.com', '2023-03-20');





