CREATE DATABASE northern_grounds;
USE northern_grounds;

CREATE TABLE Shop (
    ShopID INT PRIMARY KEY,
    ShopName VARCHAR(100),
    Neighborhood VARCHAR(100)
);

CREATE TABLE Drink (
    DrinkID INT PRIMARY KEY,
    DrinkName VARCHAR(100),
    Price DECIMAL(5,2),
    ShopID INT,
    FOREIGN KEY (ShopID) REFERENCES Shop(ShopID)
);

CREATE TABLE Purchase (
    PurchaseID INT PRIMARY KEY,
    DrinkID INT,
    PurchaseDate DATE,
    Quantity INT,
    FOREIGN KEY (DrinkID) REFERENCES Drink(DrinkID)
);

INSERT INTO Shop VALUES
(1, 'Uptown Roasters', 'Uptown'),
(2, 'Dinkytown Drip', 'Dinkytown'),
(3, 'Grand Avenue Grind', 'Grand Avenue');

INSERT INTO Drink VALUES
(1, 'Drip Coffee', 2.50, 1),
(2, 'Latte', 4.00, 1),
(3, 'Cold Brew', 3.75, 2),
(4, 'Mocha', 4.50, 2),
(5, 'Chai Latte', 4.25, 3),
(6, 'Americano', 3.00, 3);

INSERT INTO Purchase VALUES
(1, 1, '2026-06-01', 12),
(2, 1, '2026-06-02', 8),
(3, 2, '2026-06-01', 15),
(4, 3, '2026-06-01', 10),
(5, 4, '2026-06-02', 20),
(6, 5, '2026-06-01', 5),
(7, 5, '2026-06-02', 9),
(8, 6, '2026-06-02', 14);
