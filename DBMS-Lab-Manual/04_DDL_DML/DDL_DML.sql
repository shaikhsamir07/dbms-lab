-- Question:
-- Design and implement a database using DDL statements and DML statements.

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30)
);

INSERT INTO department VALUES (101, 'Computer');
INSERT INTO department VALUES (102, 'Mechanical');

SELECT * FROM department;
