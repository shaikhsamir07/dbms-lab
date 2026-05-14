-- Question:
-- Create Employee Table with primary key and foreign key constraints.
-- a. Alter table with add modify
-- b. Drop table

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);

ALTER TABLE employee
ADD department VARCHAR(50);

ALTER TABLE employee
MODIFY salary BIGINT;

DROP TABLE employee;
