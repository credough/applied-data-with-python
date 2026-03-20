## 10 — Employees + Departments ETL (Multi-Source)

**What I practiced:** The most complex transform pipeline so far — multiple custom functions, row-wise apply, date arithmetic, and three business-driven summaries using combined conditions.

**What was new from project 09:**
- Using `df.apply(func, axis=1)` to apply a function across entire rows instead of a single column — allowing access to multiple columns inside one function
- Calculating years of service by subtracting `hire_date` from a reference date using `pd.Timestamp`

**Why it matters:**
Some transformations need more than one column to compute a result.
`df.apply(axis=1)` passes the entire row to the function so you can
reference any column you need — like comparing salary against a
department budget to determine salary band.

**Project structure:**
```
10_employees_departments_etl/
├── main.py           ← orchestrates the pipeline
├── extract.py        ← reads both CSV files
├── transform.py      ← merges sources, then cleans and shapes data
├── load.py           ← writes to the database
├── employees.csv     ← 1,000 rows
└── departments.csv   ← 10 rows
```

**Tools used:** pandas, sqlalchemy, SQLite

**Transformations applied:**
- Merged `employees.csv` and `departments.csv` on `dept_id` using a left join
- Converted `hire_date` from string to datetime
- Extracted `hire_year` and `hire_month` from `hire_date`
- Calculated `years_of_service` by subtracting `hire_date` from a reference date
- Added `seniority_level` column — classified as Probationary, Junior, Mid-level, Senior, or Veteran using `.apply()`
- Added `performance_rating` column — classified using `.apply()`
- Added `salary_band` column — compared salary against department budget using `df.apply(axis=1)`
- Added `overtime_pay` derived column
- Added `is_top_performer`, `is_excessive_absences`, `is_tech_division` boolean flags
- Filtered out resigned employees

**How to run:**
```
pip install pandas sqlalchemy
python main.py
```

**Key concepts learned:**

`df.apply(func, axis=1)` — applies a function row by row, giving access
to multiple columns inside one function:
```python
def salary_band(row):
    ratio = row["salary"] / row["avg_salary_budget"]
    if ratio >= 1.5:
        return "Above Band"
    elif ratio >= 0.8:
        return "Within Band"
    else:
        return "Below Band"

df["salary_band"] = df.apply(salary_band, axis=1)
```

Calculating years of service using `pd.Timestamp` and date subtraction:
```python
Current = pd.Timestamp("2024-12-31")
df["years_of_service"] = ((Current - df["hire_date"]).dt.days / 365).round(1)
```