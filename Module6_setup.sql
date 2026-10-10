
DROP DATABASE IF EXISTS fitness_studio;
CREATE DATABASE fitness_studio;
USE fitness_studio;

DROP TABLE IF EXISTS Class;
DROP TABLE IF EXISTS Member;

CREATE TABLE Member (
MemberID INT AUTO_INCREMENT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
JoinDate DATE,
ClassesAttended INT
);

CREATE TABLE Class (
ClassID INT AUTO_INCREMENT PRIMARY KEY,
ClassName VARCHAR(100),
Instructor VARCHAR(100)
);

INSERT INTO Member (FirstName, LastName, JoinDate, ClassesAttended) VALUES
('Kayla', 'Ortiz', '2023-01-15', 32),
('Dana', 'Petrov', '2024-06-01', 8),
('Miguel', 'Alvarez', '2025-03-10', 2);

INSERT INTO Class (ClassName, Instructor) VALUES
('Yoga Flow', 'Coach Reyes'),
('Power Cycling', 'Coach Whitfield'),
('Strength Circuit', 'Coach Nguyen');