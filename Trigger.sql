-- Triggers 

-- trigger is a block of SQL code that runs automatically when a specific event happens on a table.

-- Events likes --> INSERT, UPDATE, or DELETE.

-- You don’t call a trigger manually → it fires by itself when the event occurs.

-- Think of it as a database alarm that reacts when data changes.

-- syntax fot the triggers

-- create trigger trigger_name
-- {after / before}
-- on table name
-- begin 
		-- SQL statement
-- End ;

-- create an table called order
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- create a table to store the log information of the order
CREATE TABLE orders_audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    action_type VARCHAR(20),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- create a trigger when it is order is added
Delimiter $$
create trigger oreder_added
before insert
on orders
for each row
begin 
	insert into orders_audit ( order_id , action_type )
    values (NEW.order_id , 'INSERT');
end $$ 
Delimiter ;

-- inserting the values in the orders table to check the working of the trigger
insert into orders ( order_id,customer_name,product_name,quantity,price)
values (101 , 'vinay' , 'Laptop' ,1,45000);

-- it show the trigger action in this table
select * from orders_audit;

-- create a trigger for the update 
Delimiter $$
create trigger update_Orders
before update
on orders
for each row
begin 
     insert into orders_audit ( order_id , action_type )
     values (new.order_id, 'UPDATE');
end $$
delimiter ;

-- update the orders table to check action of the trigger
update orders set quantity = 2 where order_id = 101;

-- it show the trigger action in this table
select * from orders_audit;

-- create a trigger to the delete
delimiter $$
create trigger delete_orders
after delete
on orders
for each row
begin 
		insert into orders_audit (order_id , action_type )
        values (old.order_id , 'DELETE');
end $$ 
delimiter ;        

-- delete the record from the orders table to check action of the trigger	
delete from orders where order_id = 101 ;
     
-- it show the trigger action in this table
select * from orders_audit;


-- views all the trigger
show triggers;

-- drop trigger
drop trigger trigger_name;

