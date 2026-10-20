# SQL from Scratch — 2026-10-20

## Topic 1: Reading Data

### Our schema: Mini E-commerce Store

Two tables: `customers` holds one row per shopper, and `orders` holds one row
per purchase, linked by `customer_id`. This is the classic one-to-many
relationship used throughout the course.

**customers**

- `customer_id` INT (primary key)
- `first_name` VARCHAR(50)
- `last_name` VARCHAR(50)
- `email` VARCHAR(100)
- `city` VARCHAR(50)
- `signup_date` DATE

| customer_id | first_name | last_name | email               | city      | signup_date |
|-------------|------------|-----------|---------------------|-----------|-------------|
| 1           | Priya      | Sharma    | priya.s@gmail.com   | Hyderabad | 2024-03-12  |
| 2           | Arjun      | Mehta     | arjun.m@yahoo.com   | Mumbai    | 2024-06-25  |
| 3           | Kavya      | Reddy     | kavya.r@gmail.com   | Hyderabad | 2025-01-08  |
| 4           | Rohan      | Iyer      | rohan.i@outlook.com | Chennai   | 2025-09-30  |

**orders**

- `order_id` INT (primary key)
- `customer_id` INT (foreign key → `customers.customer_id`)
- `order_date` DATE
- `total_amount` DECIMAL(10,2)
- `status` VARCHAR(20)

| order_id | customer_id | order_date | total_amount | status    |
|----------|-------------|------------|--------------|-----------|
| 101      | 1           | 2025-10-02 | 2499.00      | delivered |
| 102      | 3           | 2025-10-05 | 899.00       | shipped   |
| 103      | 1           | 2025-10-11 | 1599.00      | delivered |
| 104      | 2           | 2025-10-12 | 4999.00      | cancelled |
| 105      | 4           | 2025-10-15 | 1299.00      | delivered |

### Concept: SELECT + WHERE

`SELECT` chooses which columns you want to see and `FROM` names the table —
together they answer "show me this data." `WHERE` filters rows before they're
returned, so you only get rows matching your condition.

### Practice questions

**Question 1 of 2.** The marketing team wants to run a Hyderabad-only promo.
Write a query that returns the **first name, last name, and city** of all
customers from **Hyderabad**.

### Local practice setup

To run the lesson queries against a real database (SQLite):

1. Download `schema.sql` and `setup_db.py` from this folder into one directory.
2. Run `python3 setup_db.py` — creates `shop.db` with the exact lesson data
   (4 customers, 5 orders).
3. Query it three ways:
   - **Python** (fastest): `python3` → `import sqlite3; conn = sqlite3.connect("shop.db")` → `conn.execute("SELECT ...")`
   - **sqlite3 CLI**: `sqlite3 shop.db`, then type queries interactively
     (`.tables` lists tables, `.schema` shows DDL)
   - **DB Browser for SQLite** (GUI, free): open `shop.db`, use the Execute SQL tab

Try Question 1 against the real database — same query, real engine.
