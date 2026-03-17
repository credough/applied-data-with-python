## 05 — Employee Payroll ETL (Modular)

**What I practiced:** Restructuring an ETL pipeline into separate modules — each file has one job and one job only.

**What was new from project 04:**
- Splitting a single `pipeline.py` into `extract.py`, `transform.py`, and `load.py`
- Writing an orchestrator `main.py` that imports and calls each module in order

**Why it matters:**
Modular code is more organized because of separation of concerns — each file
knows nothing about the others and only does one thing. This is a good practice
in real engineering because it makes code easier to read, debug, and maintain.

**Project structure:**
```
05_payroll_modular_etl/
├── main.py          ← orchestrates the pipeline
├── extract.py       ← only reads the CSV
├── transform.py     ← only cleans and shapes data
├── load.py          ← only writes to the database
└── payroll_records.csv
```

**Tools used:** pandas, sqlalchemy, SQLite

**Transformations applied:**
- Converted `hire_date` and `pay_date` from string to datetime
- Extracted `hire_year` from `hire_date` using `.dt.year`
- Added `total_deductions` column — `tax + sss + philhealth`
- Added `is_high_earner` column — `True` if `net_pay` > 80,000
- Filtered to keep only `active` employees

**How to run:**
```
pip install pandas sqlalchemy
python main.py
```

**Key concept learned:**
In modular code, every function that produces data must explicitly return it.
Without `return df`, Python returns `None` by default and the data disappears.
```python
def extract(filename):
    df = pd.read_csv(filepath)
    return df    # this line is required
```