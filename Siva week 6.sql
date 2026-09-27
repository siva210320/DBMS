USE ECORIDE;

CREATE TABLE Review
(
    ReviewID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductID INT,
    ReviewText VARCHAR(200),
    ReviewDate DATE
);

CREATE TABLE Rating
(
    RatingID INT PRIMARY KEY,
    ReviewID INT,
    Rating INT,
    FOREIGN KEY (ReviewID)
    REFERENCES Review(ReviewID)
);

INSERT INTO Review VALUES
(701, 'SIVA', 101, 'Good product', '2026-09-10'),
(702, 'MANOJ', 102, 'Very good quality', '2026-09-11'),
(703, 'ROHITH', 106, 'Bad quality', '2026-09-12'),
(704, 'GOKUL', 110, 'Excellent product', '2026-09-13'),
(705, 'AMRITH', 111, 'Good performance', '2026-09-14');

INSERT INTO Rating VALUES
(801, 701, 5),
(802, 702, 4),
(803, 703, 2),
(804, 704, 5),
(805, 705, 4);

SELECT * FROM Review;

SELECT * FROM Rating;

SELECT * FROM Review
WHERE CustomerName = 'SIVA';

SELECT * FROM Review
WHERE ProductID = 101;

SELECT ReviewID, Rating
FROM Rating
WHERE Rating = 5;

SELECT * FROM Rating
WHERE Rating > 3;

SELECT * FROM Rating
WHERE Rating < 3;

UPDATE Review
SET ReviewText = 'Very good product'
WHERE ReviewID = 701;

UPDATE Rating
SET Rating = 4
WHERE RatingID = 803;

SELECT * FROM Rating
ORDER BY Rating DESC;

SELECT COUNT(*) AS TotalReviews
FROM Review;