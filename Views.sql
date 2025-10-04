-- views 

-- A View is like a virtual table created from a SELECT query.
-- It doesn’t store the data itself; it just shows data from one or more tables.

-- type
		-- 1. simple view --> based only one table
        -- 2. complex view --> two or more tables
        
-- 1.simple view
create view all_ordes as
select order_id ,customer_name ,quantity , price , ( quantity * price ) as "total price" from orders;

select * from all_ordes;


-- 2.complex view
create view orders_info as
select * from all_ordes
join orders_audit
using (order_id);

select * from orders_info;

-- See all views
show full tables where table_type = 'VIEW' ;

-- see view defination
show create view orders_info;

-- update the view
create or replace view orders_info as
select * from orders ;

select * from orders_info ;

-- drop view 
drop view view_name;


