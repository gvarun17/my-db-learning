# SQL Tutor — Lesson notes for 2026-10-21 (IST)

Topic status: **Topic 1 "Reading Data" is in progress.** Question 1 (SELECT + WHERE) is still awaiting Varun's attempt — no new rubric questions were asked today. Mastery check for Topic 1: 0 of 2 solved.

## Active schema: mini e-commerce store (unchanged from 2026-10-20)

Two tables: `customers` holds one row per shopper, `orders` holds one row per purchase, linked by `customer_id` (one-to-many).

**customers** — `customer_id` INT (PK), `first_name` VARCHAR(50), `last_name` VARCHAR(50), `email` VARCHAR(100), `city` VARCHAR(50), `signup_date` DATE

**orders** — `order_id` INT (PK), `customer_id` INT (FK → customers), `order_date` DATE, `total_amount` DECIMAL(10,2), `status` VARCHAR(20)

## Concept: SELECT + WHERE (Topic 1, from 2026-10-20)

`SELECT` chooses which columns to see and `FROM` names the table — together they answer "show me this data." `WHERE` filters rows before they're returned, so only matching rows come back.

## Practice questions

**Question 1 of 2 (still open):** The marketing team wants a Hyderabad-only promo. Write a query returning **first_name, last_name, city** of all customers from **Hyderabad**.

## Reference companion delivered: "Must-Know Database Concepts" PDF

Varun requested a descriptive, example-driven reference guide (14 pages first, expanded to 20 pages at his request). Built around the same online-shop schema (customers, orders, products, order_items), so nearly every worked example can be typed straight into the local `shop.db` practice database. Delivered 2026-10-21 ~12:19 IST (14-page version), expanded ~12:50 IST (20-page version).

Sections covered:
1. Databases, DBMS, and the relational model
2. Tables, schema, data types, and constraints (NOT NULL, UNIQUE, CHECK, DEFAULT…)
3. Keys — primary, foreign, candidate, composite, surrogate vs. natural; CASCADE / RESTRICT / SET NULL delete behaviour
4. Relationships (1:1, 1:N, M:N), ER design, junction tables
5. Normalization — anomalies, 1NF, 2NF, 3NF, BCNF, deliberate denormalization
6. SQL language families (DDL / DML / DCL / TCL), CRUD, the missing-WHERE trap
7. Filtering, sorting, aggregation — WHERE vs. HAVING, clause execution order
8. JOINs in depth — all six types, the anti-join pattern, common mistakes
9. Subqueries, CTEs, views, window functions
10. Indexes and query performance — B-trees, composite/covering indexes, EXPLAIN
11. Transactions, ACID, isolation levels, anomaly table
12. **NoSQL in depth** (expanded section) — what NoSQL means, why it emerged, flexible schema / horizontal scaling / design-around-queries; BASE vs. ACID; document stores (MongoDB JSON, embedding vs. referencing), key-value (Redis SET/GET/INCR — sessions, caches, leaderboards), wide-column (Cassandra partition keys, one table per query), graph (Neo4j Cypher); SQL vs. NoSQL comparison table; NoSQL design rules
13. **Vector databases** (new section) — why keyword search fails, embeddings & dimensions; similarity measures (cosine, dot product, Euclidean); ANN indexes (HNSW, IVF); RAG in four steps; hybrid search + metadata filtering; systems table (pgvector, Pinecone, Qdrant, Weaviate, Milvus, Chroma, FAISS); limits — similarity is not truth, chunking quality, embedding cost/drift

Closes with a design checklist, a querying checklist, and a one-week practice path mapped to the SQL lessons.

PDF file (20-page version, 487 KB): `~/workspace/your_files/must-know-database-concepts/must-know-database-concepts.pdf` (copy also at `~/workspace/goals/job-interview-thu-oct-22-2026/files/must-know-database-concepts/must-know-database-concepts.pdf`).
