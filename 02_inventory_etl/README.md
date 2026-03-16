## 02 — Product Inventory ETL

**What I practiced:** Applying the ETL pattern on a product inventory dataset — transforming raw data by adding derived columns, applying boolean conditions, and filtering rows using pandas.

**What was new from project 01:**
- Creating a boolean column using a condition (`needs_reorder`)
- Deriving a new column from two existing columns (`total_value`)
- Filtering rows using pandas conditions instead of if/else

**Tools used:** pandas, sqlalchemy, SQLite

**Transformations applied:**
- Converted `date_added` from string to datetime
- Added `total_value` column — `stock_quantity × unit_price`
- Added `needs_reorder` column — `True` if stock is below reorder level
- Filtered out any out-of-stock products

**How to run:**
```bash
pip install pandas sqlalchemy
python pipeline.py
```

**Key concept learned:**
In pandas, filtering rows replaces if/else. Instead of checking one value,
you check an entire column at once and keep only the rows that match the condition.

```bash
df[df["needs_reorder"] == True]
```