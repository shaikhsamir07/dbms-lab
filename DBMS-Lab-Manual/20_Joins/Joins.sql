-- Question:
-- Implementation of Join query.

SELECT employee.emp_name, department.dept_name
FROM employee
INNER JOIN department
ON employee.dept_id = department.dept_id;

SELECT employee.emp_name, department.dept_name
FROM employee
LEFT JOIN department
ON employee.dept_id = department.dept_id;
