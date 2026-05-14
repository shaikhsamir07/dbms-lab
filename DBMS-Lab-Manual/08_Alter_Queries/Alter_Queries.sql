-- Question:
-- Create any database and implement all Alter queries.

ALTER TABLE student
RENAME COLUMN name TO student_name;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
ADD UNIQUE(email);
