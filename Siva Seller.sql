USE ECORIDE;

CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, "ECO MOTORS", "9876100001", "ecomotors@gmail.com", "Chennai"),
(202, "GREEN DRIVE", "9876100002", "greendrive@gmail.com", "Madurai"),
(203, "EV WORLD", "9876100003", "evworld@gmail.com", "Coimbatore"),
(204, "ECO WHEELS", "9876100004", "ecowheels@gmail.com", "Salem"),
(205, "SMART EV", "9876100005", "smartev@gmail.com", "Trichy"),
(206, "ELECTRO MOTORS", "9876100006", "electromotors@gmail.com", "Chennai"),
(207, "GREEN WHEELS", "9876100007", "greenwheels@gmail.com", "Madurai"),
(208, "EV POINT", "9876100008", "evpoint@gmail.com", "Coimbatore"),
(209, "ECO RIDE MOTORS", "9876100009", "ecoridemotors@gmail.com", "Salem"),
(210, "ELECTRIC HUB", "9876100010", "electrichub@gmail.com", "Trichy"),
(211, "EV MART", "9876100011", "evmart@gmail.com", "Chennai"),
(212, "ECO DRIVE", "9876100012", "ecodrive@gmail.com", "Madurai"),
(213, "EV ZONE", "9876100013", "evzone@gmail.com", "Coimbatore"),
(214, "GREEN AUTO", "9876100014", "greenauto@gmail.com", "Salem"),
(215, "ECO VEHICLES", "9876100015", "ecovehicles@gmail.com", "Trichy"),
(216, "EV HOUSE", "9876100016", "evhouse@gmail.com", "Chennai"),
(217, "ELECTRO WORLD", "9876100017", "electroworld@gmail.com", "Madurai"),
(218, "ECO MOBILITY", "9876100018", "ecomobility@gmail.com", "Coimbatore"),
(219, "EV STORE", "9876100019", "evstore@gmail.com", "Salem"),
(220, "GREEN MOTORS", "9876100020", "greenmotors@gmail.com", "Trichy"),
(221, "ECO MART", "9876100021", "ecomart@gmail.com", "Chennai"),
(222, "EV CARE", "9876100022", "evcare@gmail.com", "Madurai"),
(223, "ELECTRIC ZONE", "9876100023", "electriczone@gmail.com", "Coimbatore"),
(224, "ECO AUTO", "9876100024", "ecoauto@gmail.com", "Salem"),
(225, "ECORIDE MOTORS", "9876100025", "ecoride@gmail.com", "Trichy"),
(226, "EV WORLD PLUS", "9876100026", "evworldplus@gmail.com", "Chennai"),
(227, "GREEN EV STORE", "9876100027", "greenevstore@gmail.com", "Madurai"),
(228, "ECO WHEELS PLUS", "9876100028", "ecowheelsplus@gmail.com", "Coimbatore"),
(229, "SMART EV HUB", "9876100029", "smartevhub@gmail.com", "Salem"),
(230, "ELECTRO DRIVE", "9876100030", "electrodrive@gmail.com", "Trichy");

SELECT * FROM Seller;

CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    VehicleID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (VehicleID)
    REFERENCES Vehicle(VehicleID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);


-- INVENTORY DATA
-- Vehicle 108 and Category 5 vehicles are already deleted

INSERT INTO Inventory VALUES
(301, 101, 201, "AVAILABLE", 30),
(302, 102, 202, "AVAILABLE", 15),
(303, 103, 203, "AVAILABLE", 18),
(304, 104, 204, "AVAILABLE", 10),
(305, 105, 205, "AVAILABLE", 8),

(306, 106, 206, "AVAILABLE", 25),
(307, 107, 207, "AVAILABLE", 15),
(308, 109, 209, "UNAVAILABLE",0),
(309, 110, 210, "AVAILABLE", 10),

(310, 111, 211, "AVAILABLE", 10),
(311, 112, 212, "AVAILABLE", 8),
(312, 113, 213, "AVAILABLE", 6),
(313, 114, 214, "AVAILABLE", 5),
(314, 115, 215, "AVAILABLE", 7),

(315, 116, 216, "AVAILABLE", 12),
(316, 117, 217, "AVAILABLE", 10),
(317, 118, 218, "AVAILABLE", 8),
(318, 119, 219, "AVAILABLE", 6),
(319, 120, 220, "AVAILABLE", 7),

(320, 126, 226, "AVAILABLE", 25),
(321, 127, 227, "AVAILABLE", 20),
(322, 128, 228, "UNAVAILABLE",0),
(323, 129, 229, "AVAILABLE", 35),
(324, 130, 230, "AVAILABLE", 15);

SELECT * FROM Inventory;


UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 308;
SELECT * FROM Inventory
WHERE InventoryID = 308;

UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = "UNAVAILABLE"
WHERE InventoryID = 316;
SELECT * FROM Inventory
WHERE InventoryID = 316;

UPDATE Inventory
SET Stock = 50,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 322;
SELECT * FROM Inventory
WHERE InventoryID = 322;

UPDATE Seller
SET ContactNo = "8695100014"
WHERE SellerID = 215;
SELECT * FROM Seller
WHERE SellerID = 215;

DELETE FROM Inventory
WHERE InventoryID = 323;

SELECT * FROM Inventory;

SELECT * FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT * FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT * FROM Inventory
ORDER BY Stock DESC;

SELECT * FROM Inventory;
SELECT * FROM Seller;