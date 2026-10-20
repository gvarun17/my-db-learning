#!/usr/bin/env python3
"""One-command setup: builds shop.db from schema.sql (tables + sample data)."""
import sqlite3
from pathlib import Path

HERE = Path(__file__).parent
DB = HERE / "shop.db"

if DB.exists():          # start fresh on every run
    DB.unlink()

conn = sqlite3.connect(DB)
conn.executescript((HERE / "schema.sql").read_text())
conn.commit()

n_cust = conn.execute("SELECT COUNT(*) FROM customers").fetchone()[0]
n_ord = conn.execute("SELECT COUNT(*) FROM orders").fetchone()[0]
print(f"Done: {DB.name} created with {n_cust} customers and {n_ord} orders.")
conn.close()
