-- Question:
-- Write and execute PL/SQL stored procedure to perform a suitable task on the database.

DELIMITER //

CREATE PROCEDURE GetEmployees()
BEGIN
    SELECT * FROM employee;
END //

DELIMITER ;

CALL GetEmployees();
