-- E-commerce practice database (matches our lesson schema)
-- Run: sqlite3 shop.db < schema.sql   OR   python3 setup_db.py

CREATE TABLE customers (
    customer_id   INTEGER PRIMARY KEY,
    first_name    TEXT NOT NULL,
    last_name     TEXT NOT NULL,
    email         TEXT NOT NULL,
    city          TEXT NOT NULL,
    signup_date   DATE NOT NULL
);

CREATE TABLE orders (
    order_id      INTEGER PRIMARY KEY,
    customer_id   INTEGER NOT NULL,
    order_date    DATE NOT NULL,
    total_amount  NUMERIC(10, 2) NOT NULL,
    status        TEXT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

INSERT INTO customers (customer_id, first_name, last_name, email, city, signup_date) VALUES
(1, 'Priya', 'Sharma', 'priya.s@gmail.com',   'Hyderabad', '2024-03-12'),
(2, 'Arjun', 'Mehta',  'arjun.m@yahoo.com',   'Mumbai',    '2024-06-25'),
(3, 'Kavya', 'Reddy',  'kavya.r@gmail.com',   'Hyderabad', '2025-01-08'),
(4, 'Rohan', 'Iyer',   'rohan.i@outlook.com', 'Chennai',   '2025-09-30');

INSERT INTO orders (order_id, customer_id, order_date, total_amount, status) VALUES
(101, 1, '2025-10-02', 2499.00, 'delivered'),
(102, 3, '2025-10-05',  899.00, 'shipped'),
(103, 1, '2025-10-11', 1599.00, 'delivered'),
(104, 2, '2025-10-12', 4999.00, 'cancelled'),
(105, 4, '2025-10-15', 1299.00, 'delivered');
