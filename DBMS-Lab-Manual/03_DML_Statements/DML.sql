-- Question:
-- Design and implement a database using DML statements.

INSERT INTO student VALUES (1, 'Rahul', 20);
INSERT INTO student VALUES (2, 'Amit', 21);

UPDATE student
SET age = 22
WHERE id = 2;

DELETE FROM student
WHERE id = 1;

SELECT * FROM student;
