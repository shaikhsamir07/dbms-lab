/*

========================================================
PRACTICAL NO. 1 — ER DIAGRAM
========================================================

Question:
Design any database with at least two entities and
relationships between them. Draw suitable ER/EER
diagram for the system.

========================================================
AIM
========================================================

To design a database system using Entity Relationship
(ER) Model and represent entities, attributes, and
relationships between them.

========================================================
PROBLEM STATEMENT
========================================================

Design a Student Course Management System database with:
1. Students
2. Courses
3. Enrollment relationship between them

========================================================
THEORY
========================================================

An ER Diagram (Entity Relationship Diagram) is used to
visually represent:
- Entities
- Attributes
- Relationships

It helps in designing database structure before
implementation.

========================================================
ENTITIES USED
========================================================

1. STUDENT ENTITY
Attributes:
- Student_ID (Primary Key)
- Student_Name
- Age
- Email

2. COURSE ENTITY
Attributes:
- Course_ID (Primary Key)
- Course_Name
- Duration

3. ENROLLMENT ENTITY
Attributes:
- Enrollment_ID
- Student_ID (Foreign Key)
- Course_ID (Foreign Key)

========================================================
RELATIONSHIP
========================================================

One student can enroll in many courses.
One course can have many students.

This creates a MANY-TO-MANY relationship.

To solve this relationship, an intermediate entity
named ENROLLMENT is used.

========================================================
TEXTUAL ER DIAGRAM
========================================================

+----------------+         +----------------+
|    STUDENT     |         |     COURSE     |
+----------------+         +----------------+
| Student_ID PK  |         | Course_ID PK   |
| Student_Name   |         | Course_Name    |
| Age            |         | Duration       |
| Email          |         +----------------+
+----------------+                 ^
        |                           |
        |                           |
        |                           |
        v                           |
       +-----------------------------------+
       |           ENROLLMENT              |
       +-----------------------------------+
       | Enrollment_ID PK                  |
       | Student_ID FK                     |
       | Course_ID FK                      |
       +-----------------------------------+

========================================================
SQL IMPLEMENTATION
========================================================

*/

-- Create Database

CREATE DATABASE college_db;

USE college_db;

-- =====================================================
-- Create Student Table
-- =====================================================

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Age INT,
    Email VARCHAR(100)
);

-- =====================================================
-- Create Course Table
-- =====================================================

CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Duration VARCHAR(20)
);

-- =====================================================
-- Create Enrollment Table
-- =====================================================

CREATE TABLE Enrollment (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,

    FOREIGN KEY (Student_ID)
    REFERENCES Student(Student_ID),

    FOREIGN KEY (Course_ID)
    REFERENCES Course(Course_ID)
);

-- =====================================================
-- Insert Data into Student Table
-- =====================================================

INSERT INTO Student VALUES
(1, 'Rahul', 20, 'rahul@gmail.com');

INSERT INTO Student VALUES
(2, 'Amit', 21, 'amit@gmail.com');

-- =====================================================
-- Insert Data into Course Table
-- =====================================================

INSERT INTO Course VALUES
(101, 'DBMS', '3 Months');

INSERT INTO Course VALUES
(102, 'Java', '4 Months');

-- =====================================================
-- Insert Data into Enrollment Table
-- =====================================================

INSERT INTO Enrollment VALUES
(1, 1, 101);

INSERT INTO Enrollment VALUES
(2, 2, 102);

-- =====================================================
-- Display Student Table
-- =====================================================

SELECT * FROM Student;

-- =====================================================
-- Display Course Table
-- =====================================================

SELECT * FROM Course;

-- =====================================================
-- Display Enrollment Table
-- =====================================================

SELECT * FROM Enrollment;

/*

========================================================
ADVANTAGES OF ER DIAGRAM
========================================================

1. Easy database planning
2. Better understanding of relationships
3. Reduces redundancy
4. Helps normalization
5. Improves database design

========================================================
APPLICATIONS
========================================================

1. College Management System
2. Banking System
3. Hospital Management System
4. E-Commerce System
5. Library Management System

========================================================
RESULT
========================================================

Thus, the Student Course Management database was
successfully designed using ER Model and relationships
were established between entities.

========================================================
VIVA QUESTIONS
========================================================

1. What is an Entity?
Ans:
An entity is a real-world object stored in the database.

2. What is an Attribute?
Ans:
Attributes are properties of an entity.

3. What is Relationship?
Ans:
Relationship defines association between entities.

4. What is Primary Key?
Ans:
A primary key uniquely identifies each record.

5. What is Foreign Key?
Ans:
Foreign key creates relation between two tables.

6. What is Cardinality?
Ans:
Cardinality defines number of relationships between
entities.

Examples:
- One-to-One
- One-to-Many
- Many-to-Many

========================================================
END OF PRACTICAL
========================================================

*/