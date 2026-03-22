## 12 — Loans + Borrowers ETL (Multi-Source)

**What I practiced:** Applying the full ETL pattern on a financial dataset — reinforcing all previous concepts while introducing combined conditions directly inside a boolean flag column.

**What was new from project 11:**
- Creating a boolean flag column using two combined conditions, not just one
- A loan is only flagged as overdue if it is still active AND past its end date

**Why it matters:**
Real-world flags are rarely based on a single condition. Combining
conditions inside a flag column keeps the logic clean and reusable,
you define it once in transform and use it anywhere in the pipeline.

**Project structure:**
```
12_loans_borrowers_etl/
├── main.py          ← orchestrates the pipeline
├── extract.py       ← reads both CSV files
├── transform.py     ← merges sources, then cleans and shapes data
├── load.py          ← writes to the database
├── loans.csv        ← 1,000 rows
└── borrowers.csv    ← 100 rows
```

**Tools used:** pandas, sqlalchemy, SQLite

**Transformations applied:**
- Merged `loans.csv` and `borrowers.csv` on `borrower_id` using a left join
- Converted `start_date`, `end_date`, and `registration_date` from string to datetime
- Extracted `start_year` and `start_month` from `start_date`
- Calculated `loan_duration_years` by subtracting `start_date` from `end_date` (two columns)
- Calculated `days_remaining` by subtracting a fixed reference date from `end_date`
- Added `remaining_balance` and `repayment_%` derived columns
- Added `loan_risk` column, scored using credit rating and existing loans via `df.apply(axis=1)`
- Added `debt_burden` column, computed from monthly payment vs income via `df.apply(axis=1)`
- Added `repayment_status` column, classified using `.apply()`
- Added `is_overdue`, `is_high_risk`, `is_large_loan`, `is_critical_burden` boolean flags
- Filtered out paid loans

**How to run:**
```
pip install pandas sqlalchemy
python main.py
```

**Key concept learned:**
A boolean flag column can combine two conditions at once using `&` —
both must be True for the flag to be True.
```python
# Single condition flag (previous projects)
df["is_high_risk"] = df["loan_risk"] == "HIgh Risk"

# Combined condition flag (this project)
df["is_overdue"] = (df["status"] == "active") & (df["days_remaining"] < 0)
```