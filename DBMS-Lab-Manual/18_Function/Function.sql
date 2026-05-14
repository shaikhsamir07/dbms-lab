-- Question:
-- Write and execute PL/SQL function to perform a suitable task on the database.

DELIMITER //

CREATE FUNCTION SquareNum(num INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN num * num;
END //

DELIMITER ;

SELECT SquareNum(5);
