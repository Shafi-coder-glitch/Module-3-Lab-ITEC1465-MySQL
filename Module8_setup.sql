
DROP DATABASE IF EXISTS nebula_books;
CREATE DATABASE nebula_books;
USE nebula_books;

DROP TABLE IF EXISTS Book;

CREATE TABLE Book (
BookID INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(150),
Author VARCHAR(100),
YearPublished INT,
Price DECIMAL(6,2)
);

INSERT INTO Book (Title, Author, YearPublished, Price) VALUES
('Dune', 'Frank Herbert', 1965, 12.99),
('I, Robot', 'Isaac Asimov', 1950, 10.99),
('Neuromancer', 'William Gibson', 1984, 11.99);
