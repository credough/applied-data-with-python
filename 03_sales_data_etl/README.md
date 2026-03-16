## 03 — Sales Transactions ETL

**What I practiced:** Applying the ETL pattern on a 1,000-row sales dataset. learning transformations, filtering, and boolean columns from previous projects while introducing datetime extraction.

**What was new from project 02:**
- Extracting specific parts from a date column using the `.dt` accessor (e.g. `.dt.month_name()`)
- Working with a significantly larger dataset — 1,000 rows vs 12

**Tools used:** pandas, sqlalchemy, SQLite

**Transformations applied:**
- Converted `transaction_date` from string to datetime
- Extracted `month` from `transaction_date` using `.dt.month_name()`
- Added `is_high_value` column — `True` if `total_amount` > 10,000
- Filtered to keep only `completed` transactions

**How to run:**
```bash
pip install pandas sqlalchemy
python pipeline.py
```

**Key concept learned:**
The `.dt` accessor lets you extract specific parts of a datetime column —
month, year, day, day of week, and more. Useful for grouping and analyzing
data by time periods.

```bash
df["month"] = df["transaction_date"].dt.month_name()
```