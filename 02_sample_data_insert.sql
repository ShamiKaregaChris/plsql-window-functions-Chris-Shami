-- Insert Sample Customers
-- ============================
INSERT INTO customers (name, region, signup_date) VALUES
('John Doe', 'Kigali', DATE '2023-01-15'),
('Jane Smith', 'Kigali', DATE '2023-02-20'),
('Robert Brown', 'Northern', DATE '2023-03-10'),
('Alice Johnson', 'Southern', DATE '2023-01-25'),
('Michael Davis', 'Eastern', DATE '2023-04-05'),
('Sarah Wilson', 'Kigali', DATE '2023-02-28'),
('David Miller', 'Western', DATE '2023-03-15'),
('Emma Taylor', 'Northern', DATE '2023-01-10'),
('James Anderson', 'Southern', DATE '2023-04-20'),
('Lisa Thomas', 'Eastern', DATE '2023-03-01');

-- Insert Sample Products
-- ============================
INSERT INTO products (name, category, price) VALUES
('Laptop', 'Electronics', 1200.00),
('Smartphone', 'Electronics', 800.00),
('Headphones', 'Electronics', 150.00),
('Desk Chair', 'Furniture', 300.00),
('Coffee Table', 'Furniture', 200.00),
('Refrigerator', 'Appliances', 1000.00),
('Microwave', 'Appliances', 250.00),
('Shoes', 'Clothing', 75.00),
('Jacket', 'Clothing', 120.00),
('Backpack', 'Accessories', 60.00);

-- Insert Sample Transactions
-- ============================
INSERT INTO transactions (customer_id, product_id, sale_date, quantity, amount) VALUES
(1, 1, DATE '2023-05-01', 1, 1200.00),
(2, 2, DATE '2023-05-03', 1, 800.00),
(3, 3, DATE '2023-05-05', 2, 300.00),
(4, 4, DATE '2023-05-07', 1, 300.00),
(5, 5, DATE '2023-05-09', 1, 200.00),
(6, 6, DATE '2023-05-10', 1, 1000.00),
(7, 7, DATE '2023-05-12', 1, 250.00),
(8, 8, DATE '2023-05-14', 2, 150.00),
(9, 9, DATE '2023-05-16', 1, 120.00),
(10, 10, DATE '2023-05-18', 1, 60.00);
