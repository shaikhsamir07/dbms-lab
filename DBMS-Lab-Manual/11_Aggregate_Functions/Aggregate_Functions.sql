-- Question:
-- Implementation of Aggregate functions with GROUP BY and HAVING clauses.

SELECT COUNT(*) FROM employee;

SELECT AVG(salary) FROM employee;

SELECT MAX(salary) FROM employee;

SELECT department, COUNT(*)
FROM employee
GROUP BY department;

SELECT department, AVG(salary)
FROM employee
GROUP BY department
HAVING AVG(salary) > 50000;
