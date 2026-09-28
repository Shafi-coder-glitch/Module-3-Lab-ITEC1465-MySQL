-- Reset the Retro Replay database and create a fresh database
DROP DATABASE IF EXISTS retro_replay;
CREATE DATABASE retro_replay;
USE retro_replay;

-- Remove existing tables before recreating them
DROP TABLE IF EXISTS TradeIn;
DROP TABLE IF EXISTS Game;
DROP TABLE IF EXISTS Console;

-- Create the Console table
CREATE TABLE Console (
ConsoleID INT AUTO_INCREMENT PRIMARY KEY,
ConsoleName VARCHAR(100),
Manufacturer VARCHAR(100),
ReleaseYear INT
);

-- Create the Game table and connect it to Console
CREATE TABLE Game (
GameID INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(150),
Genre VARCHAR(50),
Price DECIMAL(6,2),
ConsoleID INT,
FOREIGN KEY (ConsoleID) REFERENCES Console(ConsoleID)
);

-- Create the TradeIn table and connect it to Game
CREATE TABLE TradeIn (
TradeInID INT AUTO_INCREMENT PRIMARY KEY,
GameID INT,
CustomerName VARCHAR(100),
TradeInDate DATE,
CreditAmount DECIMAL(6,2),
FOREIGN KEY (GameID) REFERENCES Game(GameID)
);

-- Insert the initial consoles
INSERT INTO Console (ConsoleName, Manufacturer, ReleaseYear) VALUES
('Super Nintendo', 'Nintendo', 1991),
('Sega Genesis', 'Sega', 1989),
('PlayStation', 'Sony', 1994);

-- Insert the initial games
INSERT INTO Game (Title, Genre, Price, ConsoleID) VALUES
('Chrono Trigger', 'RPG', 45.00, 1),
('Super Metroid', 'Platformer', 40.00, 1),
('Duck Hunt', 'Shooter', 12.00, 1),
('Street Fighter II', 'Fighting', 30.00, 1),
('Sonic the Hedgehog', 'Platformer', 20.00, 2),
('Final Fantasy VII', 'RPG', 50.00, 3);

-- Insert the initial trade-in records
INSERT INTO TradeIn (GameID, CustomerName, TradeInDate, CreditAmount) VALUES
(1, 'Maya Chen', '2026-08-01', 15.00),
(4, 'Devon Brooks', '2026-08-03', 10.00);
