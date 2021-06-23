CREATE DATABASE company; 
USE company; 

CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  birth_day DATE,
  sex VARCHAR(1),
  salary INT,
  super_id INT,
  branch_id INT
);

CREATE TABLE branches (
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR(40),
  mgr_id INT,
  mgr_start_date DATE,
  CONSTRAINT fk_branches_mgr_emp
  FOREIGN KEY(mgr_id) 
  REFERENCES employees(emp_id) 
  ON DELETE SET NULL
);

ALTER TABLE employees
ADD CONSTRAINT fk_employees_branch
FOREIGN KEY(branch_id) 
REFERENCES branches(branch_id)
ON DELETE SET NULL;

ALTER TABLE employees
ADD CONSTRAINT fk_employees_super_emp
FOREIGN KEY(super_id) 
REFERENCES employees(emp_id)
ON DELETE SET NULL;

CREATE TABLE clients (
  client_id INT PRIMARY KEY,
  client_name VARCHAR(40),
  branch_id INT,
  CONSTRAINT fk_clients_branch
  FOREIGN KEY(branch_id) 
  REFERENCES branches(branch_id) 
  ON DELETE SET NULL
);

CREATE TABLE works_with (
  emp_id INT,
  client_id INT,
  total_sales INT,
  PRIMARY KEY(emp_id, client_id),
  CONSTRAINT fk_works_with_emp 
  FOREIGN KEY(emp_id) REFERENCES employees(emp_id) ON DELETE CASCADE,
  CONSTRAINT fk_works_with_client
  FOREIGN KEY(client_id) REFERENCES clients(client_id) ON DELETE CASCADE
);

CREATE TABLE branch_supplier (
  branch_id INT,
  supplier_name VARCHAR(40),
  supply_type VARCHAR(40),
  PRIMARY KEY(branch_id, supplier_name),
  CONSTRAINT fk_branch_supplier_branch
  FOREIGN KEY(branch_id) REFERENCES branches(branch_id) ON DELETE CASCADE
);