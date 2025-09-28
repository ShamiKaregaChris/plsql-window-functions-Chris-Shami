INSERT INTO products (name, category) VALUES
('Bourbon Coffee Beans', 'Whole Bean'),
('Red Bourbon Espresso', 'Ground'),
('Special Blend', 'Whole Bean'),
('Coffee Drip Bags', 'Instant'),
('Traditional Roast', 'Ground'),
('Premium Arabica', 'Whole Bean'),
('Dark Roast Blend', 'Ground'),
('Single Origin Rwanda', 'Whole Bean');

-- Insert sample transactions (spread across months for analysis)
INSERT INTO transactions (customer_id, product_id, sale_date, amount) VALUES
(1, 1, '2024-01-15', 18500.00),
(1, 2, '2024-02-20', 12000.00),
(2, 1, '2024-01-22', 22000.00),
(3, 3, '2024-03-10', 15000.00),
(1, 4, '2024-02-05', 8000.00),
(4, 5, '2024-03-18', 11000.00),
(5, 1, '2024-01-30', 19500.00),
(2, 3, '2024-03-22', 17000.00),
(1, 1, '2024-03-25', 21000.00),
(3, 2, '2024-02-14', 13500.00),
(6, 6, '2024-01-10', 16500.00),
(7, 7, '2024-02-28', 14000.00),
(8, 8, '2024-03-05', 12500.00),
(9, 1, '2024-01-20', 23000.00),
(10, 4, '2024-02-15', 9000.00),
(6, 2, '2024-03-30', 11500.00),
(7, 3, '2024-01-25', 17500.00),
(8, 5, '2024-02-10', 10500.00),
(9, 6, '2024-03-15', 19000.00),
(10, 7, '2024-01-05', 13000.00);