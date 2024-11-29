-- Insert Customers
INSERT INTO Customers VALUES 
    ('C_001', 'Mumbai'), 
    ('C_090', 'Pune'), 
    ('C_003', 'Bangalore');

-- Insert Products
INSERT INTO Products VALUES 
    ('P_07', 'Coffee'), 
    ('P_05', 'Chocolate'), 
    ('P_03', 'Caramel');

-- Insert Orders
INSERT INTO Orders VALUES 
    (1, '2023-01-01', 'C_001', 'P_07', 2800, 90, 3),
    (2, '2023-01-02', 'C_090', 'P_05', 2000, 80, 5),
    (3, '2023-01-03', 'C_003', 'P_03', 1400, 70, 4);