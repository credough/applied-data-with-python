## 07 — Orders + Customers ETL (Multi-Source)

**What I practiced:** Extracting from two CSV files, merging them on a shared key, and applying the full ETL pattern using a modular structure — reinforcing project 06 with a new dataset and introducing multiple conditions in filtering.

**What was new from project 06:**
- Using the `&` operator to filter rows with two conditions at once
- Combining `.apply()` and `.merge()` in the same pipeline

**Why it matters:**
In real data, you rarely filter by just one condition. The `&` operator
lets you combine multiple conditions to get more specific results —
both must be true for a row to be kept.

**Project structure:**
```
07_orders_customers_etl/
├── main.py          ← orchestrates the pipeline
├── extract.py       ← reads both CSV files
├── transform.py     ← merges sources, then cleans and shapes data
├── load.py          ← writes to the database
├── orders.csv       ← 1,000 rows
└── customers.csv    ← 100 rows
```

**Tools used:** pandas, sqlalchemy, SQLite

**Transformations applied:**
- Merged `orders.csv` and `customers.csv` on `customer_id` using a left join
- Converted `order_date` and `registration_date` from string to datetime
- Extracted `order_month` and `order_year` from `order_date`
- Added `order_size` column — classified as Small, Medium, or Large using `.apply()`
- Added `is_gold_member` column — `True` if customer membership is gold
- Filtered to keep only delivered orders

**How to run:**
```
pip install pandas sqlalchemy
python main.py
```

**Key concept learned:**
The `&` operator is an AND operator that produces boolean values —
both conditions must be True for a row to be kept.
```python
df[(df["order_size"] == "Large") & (df["is_gold_member"] == True)]
```