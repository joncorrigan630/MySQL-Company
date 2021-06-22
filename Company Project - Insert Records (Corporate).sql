-- Corporate
INSERT INTO employees VALUES(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL);

INSERT INTO branches VALUES(1, 'Corporate', 100, '2006-02-09');

UPDATE employees
SET branch_id = 1
WHERE emp_id = 100;

INSERT INTO employees VALUES(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1);