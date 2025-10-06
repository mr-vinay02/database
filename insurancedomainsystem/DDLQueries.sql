-- DDL queries

-- Add a New Column to the agents Table
alter table agents
add column branch_name varchar(10);

-- Rename the policy_name Column to policy_title in the policies Table
alter table policies
change column policy_name policy_title varchar(100) not null;

-- Drop the address Column from the customers Table
alter table customers
drop column address ;


