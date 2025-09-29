-- Create database tables for Café Kivu business
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(25),
    region VARCHAR(30)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(25),
    category VARCHAR(30)
);

CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    category VARCHAR(20)

