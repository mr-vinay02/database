-- DML Queries


-- Update a Policy’s Premium Amount
UPDATE policies
SET premium = 8500.00
WHERE policy_id = 3;


-- Delete a Specific Claim
DELETE FROM claims
WHERE claim_id = 5;


-- Insert a New Policy Assignment
INSERT INTO policy_assignments (customer_id, policy_id, start_date, end_date)
VALUES (1, 4, '2025-10-06', '2026-10-06');
