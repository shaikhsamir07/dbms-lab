-- Question:
-- Implementation of Set operators.

SELECT name FROM student
UNION
SELECT name FROM employee;

SELECT name FROM student
UNION ALL
SELECT name FROM employee;
