-- Find names of all employees who have sold over 50,000
SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.emp_id IN (
SELECT works_with.emp_id
FROM works_with
WHERE works_with.total_sales > 50000);

-- Find all clients who are handles by the branch that Michael Scott manages
-- Assume you know Michael's ID
SELECT clients.client_id, clients.client_name
FROM clients
WHERE clients.branch_id = (
SELECT branches.branch_id
FROM branches
WHERE branches.mgr_id = 102);

 -- Find all clients who are handles by the branch that Michael Scott manages
 -- Assume you DONT'T know Michael's ID
SELECT clients.client_id, clients.client_name
FROM clients
WHERE clients.branch_id = (
SELECT branches.branch_id
FROM branches
WHERE branches.mgr_id = (
SELECT employees.emp_id
FROM employees
WHERE employees.first_name = 'Michael' AND employees.last_name ='Scott'
LIMIT 1));

-- Find the names of employees who work with clients handled by the scranton branch
SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.emp_id IN (
SELECT works_with.emp_id
FROM works_with)
AND employees.branch_id = 2;

-- Find the names of all clients who have spent more than 100,000 dollars
SELECT clients.client_name
FROM clients
WHERE clients.client_id IN (
SELECT client_id
FROM (
SELECT SUM(works_with.total_sales) AS totals, client_id
FROM works_with
GROUP BY client_id) AS total_client_sales
WHERE totals > 100000
);