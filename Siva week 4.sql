USE ECORIDE;

CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    VehicleID INT,
    Qty INT,
    TotalAmt DECIMAL(10,2),
    OrderStatus VARCHAR(20),
    FOREIGN KEY (VehicleID)
    REFERENCES Vehicle(VehicleID)
);

CREATE TABLE Order_Details
(
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    VehicleID INT,
    Qty INT,
    UnitPrice DECIMAL(10,2),
    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID),
    FOREIGN KEY (VehicleID)
    REFERENCES Vehicle(VehicleID)
);

INSERT INTO Orders VALUES
(401, 'SIVA', 101, 2, 100000, 'PENDING'),
(402, 'MANOJ', 102, 1, 75000, 'DELIVERED'),
(403, 'ROHITH', 106, 2, 90000, 'PENDING'),
(404, 'GOKUL', 110, 1, 85000, 'DELIVERED'),
(405, 'AMRITH', 111, 1, 850000, 'PENDING');

INSERT INTO Order_Details VALUES
(501, 401, 101, 2, 50000),
(502, 402, 102, 1, 75000),
(503, 403, 106, 2, 45000),
(504, 404, 110, 1, 85000),
(505, 405, 111, 1, 850000);

SELECT * FROM Orders;

SELECT * FROM Order_Details;

UPDATE Orders
SET OrderStatus = "Shipped"
WHERE OrderID = 402;

UPDATE Orders
SET OrderStatus = "Delivered"
WHERE OrderID = 403;

SELECT * FROM Orders
ORDER BY CustomerName;

SELECT * FROM Orders
WHERE CustomerName = "RAJEE"
ORDER BY OrderID;

SELECT * FROM Orders
WHERE OrderStatus = "Pending";

SELECT * FROM Orders
WHERE OrderStatus = "Shipped";

SELECT * FROM Orders
WHERE OrderStatus = "Delivered";

SELECT CustomerName, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerName;

SELECT CustomerName, SUM(TotalAmt) AS TotalAmountSpent
FROM Orders
GROUP BY CustomerName;