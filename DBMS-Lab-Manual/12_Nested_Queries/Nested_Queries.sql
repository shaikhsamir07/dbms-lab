-- Question:
-- Implementation of Nested queries.

SELECT emp_name
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
);
