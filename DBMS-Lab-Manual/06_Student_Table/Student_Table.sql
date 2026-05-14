-- Question:
-- Create Student Table with primary key and foreign key constraints.
-- a. Alter table with add modify
-- b. Drop table

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT
);

ALTER TABLE student
ADD email VARCHAR(100);

ALTER TABLE student
MODIFY age SMALLINT;

DROP TABLE student;
