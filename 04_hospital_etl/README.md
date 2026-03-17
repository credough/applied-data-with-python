## 04 — Hospital Patient Records ETL

**What I practiced:** Applying the ETL pattern on a 1,000-row hospital dataset — reinforcing all previous transformations while introducing custom functions with `.apply()`.

**What was new from project 03:**
- Writing a custom function and applying it to every row of a column using `.apply()`
- Categorizing data into groups based on multiple conditions (age grouping)

**Tools used:** pandas, sqlalchemy, SQLite

**Transformations applied:**
- Converted `admission_date` from string to datetime
- Extracted `admission_month` from `admission_date` using `.dt.month_name()`
- Added `age_group` column — classified each patient as Child, Teenager, Adult, or Senior using a custom function
- Added `is_high_bill` column — `True` if `bill_amount` > 100,000
- Filtered to keep only `discharged` patients

**How to run:**
```
pip install pandas sqlalchemy
python pipeline.py
```

**Key concept learned:**
`.apply()` runs a custom function on every row of a column, useful when
a transformation is too complex for a single line expression.
```python
def age_group(age):
    if age <= 12:
        return "Child"
    elif age <= 17:
        return "Teenager"
    elif age <= 59:
        return "Adult"
    else:
        return "Senior"

df["age_group"] = df["age"].apply(age_group)
```