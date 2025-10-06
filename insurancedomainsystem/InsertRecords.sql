-- insert records

INSERT INTO customers (first_name, last_name, date_of_birth, gender, contact_number, email)
VALUES
('Ravi', 'Kumar', '1988-05-12', 'Male', '9876543210', 'ravi.kumar@example.com'),
('Priya', 'Sharma', '1990-09-25', 'Female', '9876501234', 'priya.sharma@example.com'),
('Arjun', 'Patel', '1995-12-02', 'Male', '9823456789', 'arjun.patel@example.com'),
('Neha', 'Singh', '1992-03-17', 'Female', '9856743210', 'neha.singh@example.com');



INSERT INTO policies (policy_title, policy_type, coverage_details, premium, start_date, end_date)
VALUES
('Health Secure Plan', 'Health', 'Covers hospitalization ', 7500.00, '2024-01-01', '2025-01-01'),
('Auto Protect Plus', 'Auto', 'Covers vehicle damage ', 5500.00, '2024-03-15', '2025-03-15'),
('Life Shield Policy', 'Life', 'Covers life insurance ', 12000.00, '2024-06-10', '2044-06-10'),
('Travel Guard', 'Travel', 'Covers trip cancellations', 4000.00, '2024-07-01', '2025-07-01');



INSERT INTO agents (first_name, last_name, contact_number, email, hire_date, branch_name)
VALUES
('Suresh', 'Naik', '9845123456', 'suresh.naik@insurance.com', '2022-04-10', 'Bangalore'),
('Meena', 'Rao', '9834567890', 'meena.rao@insurance.com', '2021-09-20', 'Mysuru'),
('Rahul', 'Shetty', '9823459876', 'rahul.shetty@insurance.com', '2023-02-01', 'Hubballi ');


INSERT INTO claims (claim_date, claim_amount, approved_amount, claim_status, policy_id, customer_id)
VALUES
('2024-08-10', 15000.00, 14000.00, 'Approved', 1, 1),
('2024-09-12', 8000.00, 0.00, 'Denied', 2, 2),
('2024-09-20', 5000.00, 4800.00, 'Approved', 1, 3),
('2024-10-01', 12000.00, NULL, 'Pending', 3, 4);



INSERT INTO policy_assignments (customer_id, policy_id, start_date, end_date)
VALUES
(1, 1, '2024-01-01', '2025-01-01'),
(2, 2, '2024-03-15', '2025-03-15'),
(3, 3, '2024-06-10', '2044-06-10'),
(4, 4, '2024-07-01', '2025-07-01');



INSERT INTO claim_processing (claim_id, processing_date, payment_amount, payment_date)
VALUES
(1, '2024-08-15', 14000.00, '2024-08-16'),
(2, '2024-09-15', 0.00, NULL),
(3, '2024-09-25', 4800.00, '2024-09-26'),
(4, '2024-10-05', NULL, NULL);
