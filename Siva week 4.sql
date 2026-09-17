USE ECORIDE;

DROP TABLE IF EXISTS Order_Details;
DROP TABLE IF EXISTS `Order`;

CREATE TABLE `Order`
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
    REFERENCES `Order`(OrderID),
    FOREIGN KEY (VehicleID)
    REFERENCES Vehicle(VehicleID)
);

INSERT INTO `Order` VALUES
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

SELECT * FROM `Order`;

SELECT * FROM Order_Details;

UPDATE `Order`
SET OrderStatus = 'PENDING'
WHERE OrderID = 404;

SELECT * FROM `Order`
WHERE OrderID = 404;

UPDATE `Order`
SET Qty = 3,
    TotalAmt = 150000
WHERE OrderID = 401;

SELECT * FROM `Order`
WHERE OrderID = 401;

SELECT *
FROM `Order`
WHERE OrderStatus = 'PENDING';

SELECT *
FROM `Order`
WHERE OrderStatus = 'DELIVERED';