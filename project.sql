create database project;
use project;
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT
); 
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity)
VALUES
    (1, 'T-shirt', 'Apparel', 19.99, 100),
    (2, 'Jeans', 'Apparel', 29.99, 80),
    (3, 'Sneakers', 'Footwear', 39.99, 50),
    (4, 'Backpack', 'Accessories', 24.99, 60),
    (5, 'Smartphone', 'Electronics', 399.99, 30),
    (6, 'Laptop', 'Electronics', 899.99, 20),
    (7, 'Headphones', 'Electronics', 49.99, 40),
    (8, 'Water Bottle', 'Accessories', 9.99, 120),
    (9, 'Dress Shirt', 'Apparel', 34.99, 70),
    (10, 'Skirt', 'Apparel', 24.99, 60),
    -- Add more rows as needed
    (11, 'Running Shoes', 'Footwear', 59.99, 40),
    (12, 'Hiking Boots', 'Footwear', 79.99, 30),
    (13, 'Baseball Cap', 'Accessories', 14.99, 80),
    (14, 'Sunglasses', 'Accessories', 29.99, 50),
    (15, 'Watch', 'Accessories', 99.99, 40),
    (16, 'Winter Jacket', 'Apparel', 89.99, 25),
    (17, 'Snowboard', 'Sports', 199.99, 15),
    (18, 'Yoga Mat', 'Sports', 29.99, 35),
    (19, 'Dumbbells Set', 'Fitness', 49.99, 20),
    (20, 'Treadmill', 'Fitness', 499.99, 10),
    -- Add more rows as needed
    (21, 'Blender', 'Kitchen Appliances', 39.99, 30),
    (22, 'Coffee Maker', 'Kitchen Appliances', 79.99, 25),
    (23, 'Toaster', 'Kitchen Appliances', 29.99, 35),
    (24, 'Microwave', 'Kitchen Appliances', 99.99, 20),
    (25, 'Vacuum Cleaner', 'Home Appliances', 149.99, 15),
    (26, 'Air Purifier', 'Home Appliances', 199.99, 10),
    (27, 'Electric Kettle', 'Kitchen Appliances', 19.99, 40),
    (28, 'Rice Cooker', 'Kitchen Appliances', 49.99, 20),
    (29, 'Desk Lamp', 'Home Decor', 24.99, 50),
    (30, 'Throw Pillow', 'Home Decor', 14.99, 60),
    -- Add more rows as needed
    (31, 'Gaming Console', 'Electronics', 299.99, 20),
    (32, 'Game Controller', 'Electronics', 49.99, 30),
    (33, 'Smart TV', 'Electronics', 599.99, 10),
    (34, 'Soundbar', 'Electronics', 129.99, 15),
    (35, 'Digital Camera', 'Electronics', 199.99, 25),
    (36, 'External Hard Drive', 'Electronics', 79.99, 30),
    (37, 'Wireless Router', 'Electronics', 49.99, 40),
    (38, 'USB Flash Drive', 'Electronics', 9.99, 100),
    (39, 'Portable Speaker', 'Electronics', 29.99, 50),
    (40, 'Wireless Earbuds', 'Electronics', 79.99, 30),
    -- Add more rows as needed
    (41, 'Tennis Racket', 'Sports', 49.99, 30),
    (42, 'Basketball', 'Sports', 19.99, 40),
    (43, 'Soccer Ball', 'Sports', 14.99, 50),
    (44, 'Golf Clubs Set', 'Sports', 199.99, 10),
    (45, 'Camping Tent', 'Outdoor Recreation', 99.99, 20),
    (46, 'Sleeping Bag', 'Outdoor Recreation', 49.99, 30),
    (47, 'Fishing Rod', 'Outdoor Recreation', 29.99, 40),
    (48, 'Hiking Backpack', 'Outdoor Recreation', 59.99, 25),
    (49, 'Swimming Goggles', 'Water Sports', 14.99, 50),
    (50, 'Life Jacket', 'Water Sports', 29.99, 30);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255)
);
 CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Main St, City, Country'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '456 Elm St, City, Country'),
    (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '555-555-5555', '789 Oak St, City, Country'),
    (4, 'Emily', 'Brown', 'emily.brown@example.com', '111-222-3333', '321 Maple St, City, Country'),
    (5, 'Christopher', 'Wilson', 'christopher.wilson@example.com', '444-444-4444', '987 Pine St, City, Country'),
    (6, 'Sarah', 'Martinez', 'sarah.martinez@example.com', '666-777-8888', '654 Birch St, City, Country'),
    (7, 'David', 'Anderson', 'david.anderson@example.com', '333-222-1111', '852 Cedar St, City, Country'),
    (8, 'Jessica', 'Taylor', 'jessica.taylor@example.com', '999-888-7777', '753 Spruce St, City, Country'),
    (9, 'Daniel', 'Thomas', 'daniel.thomas@example.com', '123-456-7890', '963 Walnut St, City, Country'),
    (10, 'Ashley', 'Hernandez', 'ashley.hernandez@example.com', '111-222-3333', '852 Oak St, City, Country'),
    -- Add more rows as needed
    (11, 'Matthew', 'Jackson', 'matthew.jackson@example.com', '777-888-9999', '147 Pine St, City, Country'),
    (12, 'Amanda', 'White', 'amanda.white@example.com', '222-333-4444', '369 Elm St, City, Country'),
    (13, 'James', 'Garcia', 'james.garcia@example.com', '555-666-7777', '753 Maple St, City, Country'),
    (14, 'Lauren', 'Rodriguez', 'lauren.rodriguez@example.com', '888-999-0000', '852 Cedar St, City, Country'),
    (15, 'Ryan', 'Lopez', 'ryan.lopez@example.com', '444-555-6666', '963 Birch St, City, Country'),
    (16, 'Stephanie', 'Lee', 'stephanie.lee@example.com', '111-222-3333', '147 Walnut St, City, Country'),
    (17, 'Kevin', 'Walker', 'kevin.walker@example.com', '777-888-9999', '369 Oak St, City, Country'),
    (18, 'Elizabeth', 'Perez', 'elizabeth.perez@example.com', '222-333-4444', '753 Pine St, City, Country'),
    (19, 'Justin', 'Moore', 'justin.moore@example.com', '555-666-7777', '852 Elm St, City, Country'),
    (20, 'Megan', 'Gonzalez', 'megan.gonzalez@example.com', '888-999-0000', '963 Maple St, City, Country'),
    -- Add more rows as needed
    (21, 'Brandon', 'Roberts', 'brandon.roberts@example.com', '123-456-7890', '147 Cedar St, City, Country'),
    (22, 'Rachel', 'Cook', 'rachel.cook@example.com', '777-888-9999', '369 Birch St, City, Country'),
    (23, 'Nicole', 'Morgan', 'nicole.morgan@example.com', '555-666-7777', '753 Walnut St, City, Country'),
    (24, 'Jonathan', 'Bell', 'jonathan.bell@example.com', '888-999-0000', '852 Oak St, City, Country'),
    (25, 'Michelle', 'Murphy', 'michelle.murphy@example.com', '222-333-4444', '963 Cedar St, City, Country'),
    (26, 'Alexander', 'Rivera', 'alexander.rivera@example.com', '111-222-3333', '147 Elm St, City, Country'),
    (27, 'Samantha', 'Cooper', 'samantha.cooper@example.com', '777-888-9999', '369 Maple St, City, Country');
    
    INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1, 1, '2024-04-01', 150.00),
    (2, 2, '2024-04-02', 75.50),
    (3, 3, '2024-04-03', 200.25),
    (4, 4, '2024-04-04', 90.80),
    (5, 5, '2024-04-05', 120.00),
    (6, 6, '2024-04-06', 45.99),
    (7, 7, '2024-04-07', 300.00),
    (8, 8, '2024-04-08', 80.50),
    (9, 9, '2024-04-09', 175.75),
    (10, 10, '2024-04-10', 99.99),
    -- Add more rows as needed
    (11, 13, '2024-04-11', 250.00),
    (12, 24, '2024-04-12', 95.25),
    (13, 30, '2024-04-13', 180.30),
    (14, 20, '2024-04-14', 70.00),
    (15, 10, '2024-04-15', 110.50),
    (16, 24, '2024-04-16', 55.75),
    (17, 27, '2024-04-17', 400.00),
    (18, 38, '2024-04-18', 85.99),
    (19, 29, '2024-04-19', 150.00),
    (20, 50, '2024-04-20', 120.25),
    -- Add more rows as needed
    (21, 16, '2024-04-21', 180.50),
    (22, 22, '2024-04-22', 65.75),
    (23, 39, '2024-04-23', 220.00),
    (24, 13, '2024-04-24', 75.99);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1, 1, '2024-04-19', 125.99),
    (2, 2, '2024-04-18', 75.50),
    (3, 3, '2024-04-18', 210.25),
    (4, 4, '2024-04-17', 150.00),
    (5, 5, '2024-04-17', 95.75),
    (6, 6, '2024-04-16', 200.00),
    (7, 7, '2024-04-16', 80.50),
    (8, 8, '2024-04-15', 45.99),
    (9, 9, '2024-04-15', 175.25),
    (10, 10, '2024-04-14', 120.00),
    -- Add more rows as needed
    (11, 11, '2024-04-14', 95.75),
    (12, 12, '2024-04-13', 200.00),
    (13, 13, '2024-04-13', 80.50),
    (14, 14, '2024-04-12', 45.99),
    (15, 15, '2024-04-12', 175.25),
    (16, 16, '2024-04-11', 120.00),
    (17, 17, '2024-04-11', 95.75),
    (18, 18, '2024-04-10', 200.00),
    (19, 19, '2024-04-10', 80.50),
    (20, 20, '2024-04-09', 45.99),
    -- Add more rows as needed
    (21, 21, '2024-04-09', 175.25),
    (22, 22, '2024-04-08', 120.00),
    (23, 23, '2024-04-08', 95.75),
    (24, 24, '2024-04-07', 200.00),
    (25, 25, '2024-04-07', 80.50),
    (26, 26, '2024-04-06', 45.99);
    
    INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (51, 11, '2024-03-25', 45.99),
    (52, 12, '2024-03-25', 175.25),
    (53, 13, '2024-03-24', 120.00),
    (54, 14, '2024-03-24', 95.75),
    (55, 15, '2024-03-23', 200.00),
    (56, 16, '2024-03-23', 80.50),
    (57, 17, '2024-03-22', 45.99),
    (58, 18, '2024-03-22', 175.25),
    (59, 19, '2024-03-21', 120.00),
    (60, 20, '2024-03-21', 95.75),
    -- Add more rows as needed
    (61, 21, '2024-03-20', 200.00),
    (62, 22, '2024-03-20', 80.50),
    (63, 23, '2024-03-19', 45.99),
    (64, 24, '2024-03-19', 175.25),
    (65, 25, '2024-03-18', 120.00),
    (66, 26, '2024-03-18', 95.75);
    
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, Price)
VALUES
    (1, 1, 1, 2, 39.98),
    (2, 1, 2, 1, 29.99),
    (3, 2, 3, 1, 39.99),
    (4, 2, 4, 1, 24.99),
    (5, 3, 5, 1, 399.99),
    (6, 3, 6, 1, 899.99),
    (7, 4, 7, 2, 99.98),
    (8, 5, 8, 3, 29.97),
    (9, 6, 9, 1, 34.99),
    (10, 7, 10, 1, 24.99),
    -- Add more rows as needed
    (11, 8, 11, 1, 59.99),
    (12, 8, 12, 1, 79.99),
    (13, 9, 13, 2, 29.98),
    (14, 9, 14, 1, 29.99),
    (15, 10, 15, 1, 99.99),
    (16, 11, 16, 1, 89.99),
    (17, 12, 17, 1, 199.99),
    (18, 13, 18, 1, 29.99),
    (19, 13, 19, 1, 49.99),
    (20, 14, 20, 1, 499.99),
    -- Add more rows as needed
    (21, 15, 21, 1, 39.99),
    (22, 15, 22, 1, 79.99),
    (23, 16, 23, 1, 29.99),
    (24, 16, 24, 1, 99.99),
    (25, 17, 25, 1, 149.99),
    (26, 18, 26, 1, 199.99),
    (27, 19, 27, 1, 19.99),
    (28, 19, 28, 1, 49.99),
    (29, 20, 29, 2, 49.98),
    (30, 20, 30, 1, 79.99);
