DROP DATABASE IF EXISTS foghorn;
CREATE DATABASE foghorn;
USE foghorn;

DROP TABLE IF EXISTS SupportTicket;
DROP TABLE IF EXISTS Customer;

CREATE TABLE Customer (
CustomerID INT AUTO_INCREMENT PRIMARY KEY,
CustomerName VARCHAR(100),
Email VARCHAR(100)
);

CREATE TABLE SupportTicket (
TicketID INT AUTO_INCREMENT PRIMARY KEY,
CustomerID INT,
Subject VARCHAR(150),
Status VARCHAR(20),
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

INSERT INTO Customer (CustomerName, Email) VALUES
('Harborview Clinic', 'it@harborviewclinic.example'),
('Maple Street Bakery', 'owner@maplestreetbakery.example'),
('Redline Logistics', 'support@redlinelogistics.example');

INSERT INTO SupportTicket (CustomerID, Subject, Status) VALUES
(1, 'Cannot access patient portal', 'Open'),
(2, 'Point of sale system frozen', 'Open'),
(3, 'Password reset request', 'Closed'),
(1, 'Slow file upload speeds', 'Open');