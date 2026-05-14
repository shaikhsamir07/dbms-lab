-- Question:
-- Design and implement a database using DDL statements.

CREATE DATABASE college;
USE college;

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

DESC student;
