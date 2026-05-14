-- Question:
-- Write and execute suitable database triggers.

CREATE TABLE employee_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    message VARCHAR(255)
);

DELIMITER //

CREATE TRIGGER after_insert_employee
AFTER INSERT ON employee
FOR EACH ROW
BEGIN
    INSERT INTO employee_log(message)
    VALUES ('New Employee Added');
END //

DELIMITER ;
