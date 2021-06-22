-- Stamford
INSERT INTO employees VALUES(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, NULL);

INSERT INTO branches VALUES(3, 'Stamford', 106, '1998-02-13');

UPDATE employees
SET branch_id = 3
WHERE emp_id = 106;

INSERT INTO employees VALUES(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3);
INSERT INTO employees VALUES(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);