-- window function

-- create table
CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    salesperson VARCHAR(100) NOT NULL,
    region VARCHAR(50) NOT NULL,
    sale_amount DECIMAL(10,2) NOT NULL,
    sale_date DATE NOT NULL
);

-- inserting values to table
INSERT INTO sales (salesperson, region, sale_amount, sale_date) VALUES
('Alice', 'North', 1200.00, '2025-01-01'),
('Bob', 'South', 1500.00, '2025-01-02'),
('Charlie', 'North', 800.00, '2025-01-03'),
('Alice', 'North', 2000.00, '2025-01-04'),
('Bob', 'South', 2200.00, '2025-01-05'),
('Charlie', 'North', 950.00, '2025-01-06'),
('Alice', 'East', 1700.00, '2025-01-07'),
('Bob', 'East', 1900.00, '2025-01-08');

-- view records
select * from sales;

-- delete all the records for the table
truncate table sales;

-- insert values into table
INSERT INTO sales (salesperson, region, sale_amount, sale_date) VALUES
('Alice',   'North', 1200.00, '2025-01-01'),
('Bob',     'South', 1500.00, '2025-01-02'),
('Charlie', 'North', 1200.00, '2025-01-03'),  -- duplicate 1200
('Daisy',   'East',  2000.00, '2025-01-04'),
('Ethan',   'South', 1500.00, '2025-01-05'),  -- duplicate 1500
('Fiona',   'West',  1800.00, '2025-01-06'),
('George',  'North', 2000.00, '2025-01-07'),  -- duplicate 2000
('Hannah',  'East',  2200.00, '2025-01-08'),
('Irene',   'South', 1800.00, '2025-01-09'),  -- duplicate 1800
('Jack',    'West',  2500.00, '2025-01-10');



-- CHECK ALL THE WINDOW FUNCTION
select sale_id , salesperson , region , sale_amount ,
row_number() over (order by sale_amount DESC ) as "row_number" ,
rank() over (order by sale_amount DESC ) as "rank" , 
dense_rank() over (order by sale_amount DESC ) as "dense rank",
ntile(4) over (order by sale_amount DESC ) as "ntile",
lag(sale_amount) over (order by sale_amount DESC ) as "lag",
lead(sale_amount) over (order by sale_amount DESC ) as "lead",
sum(sale_amount) over (order by sale_amount desc ) as "RUNNING_SUM",
AVG(sale_amount) over (order by sale_amount desc ) as "RUNNING_AVG",
COUNT(SALE_ID) over (order by sale_amount desc ) as "RUNNING_COUNT"
from sales ;