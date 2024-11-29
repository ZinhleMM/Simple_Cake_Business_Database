-- Customers Table
CREATE TABLE Customers (
    Customer_ID VARCHAR(10) PRIMARY KEY,
    City VARCHAR(50)
);

-- Products Table
CREATE TABLE Products (
    Product_ID VARCHAR(10) PRIMARY KEY,
    Cupcake_Flavor VARCHAR(50)
);

-- Orders Table
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Date DATE,
    Customer_ID VARCHAR(10),
    Product_ID VARCHAR(10),
    Quantity INT,
    Unit_Price DECIMAL(10, 2),
    Rating INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);