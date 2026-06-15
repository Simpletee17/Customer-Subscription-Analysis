CREATE DATABASE SubscriptionAnalysis;

USE SubscriptionAnalysis;

CREATE TABLE CustomerData (
    CustomerID INT,
    CustomerName VARCHAR(100),
    Region VARCHAR(50),
    SubscriptionType VARCHAR(50),
    SubscriptionStart DATE,
    SubscriptionEnd DATE,
    Canceled VARCHAR(10),
    Revenue FLOAT
);

SELECT TOP 10 * FROM CustomerData;

--Subscription Duration (Days)
SELECT *, DATEDIFF(DAY, SubscriptionStart, SubscriptionEnd) AS SubscriptionDuration_Days
	FROM CustomerData;

--Subscription Duration (Months)
SELECT *, DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) AS SubscriptionDuration_Months
	FROM CustomerData;

--Total Customers
SELECT COUNT(CustomerID) AS TotalCustomers
FROM CustomerData;

--Total Revenue
SELECT SUM(Revenue) AS TotalRevenue
FROM CustomerData;

--Revenue by Subscription Type
SELECT SubscriptionType,
SUM(Revenue) AS TotalRevenue
FROM CustomerData
GROUP BY SubscriptionType
ORDER BY TotalRevenue DESC;

--Customers by Region
SELECT Region,
COUNT(CustomerID) AS TotalCustomers
FROM CustomerData
GROUP BY Region;

--Active vs Cancelled
SELECT Canceled,
COUNT(CustomerID) AS TotalCustomers
FROM CustomerData
GROUP BY Canceled;

--Top Regions by Cancellation
SELECT Region,
COUNT(CustomerID) AS CancelledCustomers
FROM CustomerData
WHERE Canceled = 1
GROUP BY Region
ORDER BY CancelledCustomers DESC;