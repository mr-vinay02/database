-- Joins Queries


-- Retrieve all customers with their assigned policies and agents:
select cst.customer_id , cst.first_name ,cst.last_name , cst.gender , policy_title , policy_type
from customers cst
join policy_assignments using ( customer_id )
join policies using (policy_id );


 -- Find all claims and the associated policy details:
 select claim_id , claim_amount , first_name ,last_name , policy_id ,policy_type
 from claims
 join policies using (policy_id )
 join customers using (customer_id );
 
 
 -- List all claims along with the customer details:
  select claim_id , claim_amount , concat(first_name ,' ',last_name) as "customers" ,email , gender ,policy_type
 from claims
 join policies using (policy_id )
 join customers using (customer_id );
 
 
 -- Get the total claim amount and number of claims per policy type:
 select  policy_type ,count(*) as "total policies" ,sum(claim_amount) as "total amount "
  from claims
 join policies using ( policy_id )
 group by policy_type ;
 
 -- Find the most recent claim for each customer:
 select customer_id, concat(first_name ,' ',last_name)as "customer" , email ,claim_date , claim_status , claim_amount
 from customers
 join claims using (customer_id)
 where claim_status = 'Approved' 
 order by claim_date 
 limit 1;
 
