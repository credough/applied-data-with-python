## 13 — Transactions + Merchants ETL (Multi-Source)

**What I practiced:** Applying the full ETL pattern on a financial transactions dataset, reinforcing all previous concepts while introducing column renaming after merge, `.isin()` for filtering, and `and not` logic inside a custom function.

**What was new from project 12:**
- Handling column name conflicts after merging two dataframes that share a column name — pandas auto-renames them to `_x` and `_y`, which we fix using `.rename()`
- Using `.isin()` to filter rows matching multiple values at once instead of chaining `|` conditions
- Using `and not` logic inside a row-wise function to combine a numeric condition with a boolean check

**Why it matters:**
In real pipelines, two data sources will often share column names — knowing
how to handle the conflict cleanly is an essential merging skill. `.isin()`
also makes filters more readable and maintainable when checking against
multiple values.

**Project structure:**
```
13_transactions_merchants_etl/
├── main.py               ← orchestrates the pipeline
├── extract.py            ← reads both CSV files
├── transform.py          ← merges sources, then cleans and shapes data
├── load.py               ← writes to the database
├── transactions.csv      ← 1,000 rows
└── merchants.csv         ← 50 rows
```

**Tools used:** pandas, sqlalchemy, SQLite

**Transformations applied:**
- Merged `transactions.csv` and `merchants.csv` on `merchant_id` using a left join
- Renamed conflicting `status` columns to `txn_status` and `merchant_status` after merge
- Converted `txn_date`, `completed_date`, and `registration_date` from string to datetime
- Extracted `txn_year`, `txn_month`, `txn_day`, and `txn_hour` from `txn_date`
- Calculated `actual_processing_secs` by subtracting `txn_date` from `completed_date` (two columns)
- Calculated `merchant_age_days` using a fixed reference date (`pd.Timestamp`)
- Added `txn_size` column — classified using `.apply()`
- Added `time_of_day` column — classified using `.apply()`
- Added `is_suspicious` column — row-wise using `df.apply(axis=1)` with `and not` logic
- Added `merchant_performance` column — row-wise using `df.apply(axis=1)`
- Added `is_large_txn`, `is_weekend`, `is_suspicious_and_completed` boolean flags
- Filtered to keep only completed and refunded transactions using `.isin()`

**How to run:**
```
pip install pandas sqlalchemy
python main.py
```

**Key concepts learned:**

Renaming conflicting columns after merge:
```python
df.rename(columns={"status_x": "txn_status", "status_y": "merchant_status"}, inplace=True)
```

`.isin()` for filtering multiple values at once:
```python
# Without .isin() — verbose
df = df[(df["txn_status"] == "completed") | (df["txn_status"] == "refunded")]

# With .isin() — cleaner
df = df[df["txn_status"].isin(["completed", "refunded"])]
```

`and not` logic inside a row-wise function:
```python
def is_suspicious(row):
    if row["amount"] > row["avg_transaction_value"] * 5 and not row["is_verified"]:
        return True
    return False
```

**Still confusing, needs more practice:**
- Row-wise classification using `df.apply(axis=1)`