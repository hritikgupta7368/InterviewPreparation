-- Example Database Schema
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- General SQL Problems

-- 1. Basic SELECT query
SELECT * FROM Customers;

-- 2. Filtering with WHERE clause
SELECT * FROM Orders WHERE TotalAmount > 1000;

-- 3. Sorting with ORDER BY
SELECT ProductName, Price FROM Products ORDER BY Price DESC;

-- 4. Aggregation with GROUP BY and HAVING
SELECT Category, AVG(Price) AS AvgPrice
FROM Products
GROUP BY Category
HAVING AVG(Price) > 50;

-- 5. Joining multiple tables
SELECT c.Name, o.OrderID, o.OrderDate
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 6. Subquery
SELECT ProductName, Price
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);

-- 7. UNION and UNION ALL
SELECT 'Customer' AS Type, Name FROM Customers
UNION
SELECT 'Employee' AS Type, FirstName FROM Employees;

-- 8. Window functions
SELECT
    EmployeeID,
    FirstName,
    Salary,
    AVG(Salary) OVER (PARTITION BY Department) AS AvgDepartmentSalary
FROM Employees;

-- 9. Common Table Expressions (CTE)
WITH HighValueOrders AS (
    SELECT CustomerID, COUNT(*) AS OrderCount
    FROM Orders
    WHERE TotalAmount > 5000
    GROUP BY CustomerID
)
SELECT c.Name, h.OrderCount
FROM Customers c
JOIN HighValueOrders h ON c.CustomerID = h.CustomerID;

-- 10. INSERT statement
INSERT INTO Customers (CustomerID, Name, Email, City, Country)
VALUES (1001, 'John Doe', 'john@example.com', 'New York', 'USA');

-- 11. UPDATE statement
UPDATE Products
SET Price = Price * 1.1
WHERE Category = 'Electronics';

-- 12. DELETE statement
DELETE FROM OrderDetails
WHERE OrderID IN (SELECT OrderID FROM Orders WHERE OrderDate < '2022-01-01');

-- 13. CREATE INDEX
CREATE INDEX idx_product_name ON Products(ProductName);

-- 14. Views
CREATE VIEW CustomerOrderSummary AS
SELECT
    c.CustomerID,
    c.Name,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.TotalAmount) AS TotalSpent
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name;

-- 15. Stored Procedure
DELIMITER //
CREATE PROCEDURE GetTopCustomers(IN topN INT)
BEGIN
    SELECT c.Name, SUM(o.TotalAmount) AS TotalSpent
    FROM Customers c
    JOIN Orders o ON c.CustomerID = o.CustomerID
    GROUP BY c.CustomerID, c.Name
    ORDER BY TotalSpent DESC
    LIMIT topN;
END //
DELIMITER ;

-- Call the stored procedure
CALL GetTopCustomers(5);
