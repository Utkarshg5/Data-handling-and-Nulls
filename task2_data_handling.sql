-- Task 2: Data Insertion and Handling Nulls
-- Create Table
CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    Email TEXT,
    Phone TEXT,
    City TEXT
);

-- Insert sample data with some NULLs
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, City) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890', 'Mumbai'),
(2, 'Jane', 'Smith', NULL, '9876543210', 'Delhi'),
(3, 'Amit', 'Verma', 'amit.verma@example.com', NULL, 'Pune'),
(4, 'Sara', NULL, 'sara.k@example.com', '9988776655', NULL),
(5, 'Ravi', 'Patel', NULL, NULL, NULL);

-- Update NULL Email for Jane Smith
UPDATE Customers
SET Email = 'jane.smith@example.com'
WHERE CustomerID = 2;

-- Set default city as 'Unknown' if City is NULL
UPDATE Customers
SET City = 'Unknown'
WHERE City IS NULL;

-- Set default phone number if Phone is NULL
UPDATE Customers
SET Phone = '0000000000'
WHERE Phone IS NULL;

-- Delete customers who still have NULL email
DELETE FROM Customers
WHERE Email IS NULL;

-- Delete a specific customer by ID
DELETE FROM Customers
WHERE CustomerID = 5;

-- Final data should be clean and consistent
