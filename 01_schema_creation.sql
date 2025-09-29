-- Create database tables for Café Kivu business
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    region VARCHAR(50)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50)
);

CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    category VARCHAR(50)

