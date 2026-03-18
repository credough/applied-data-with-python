## 06 — Products + Suppliers ETL (Multi-Source)

**What I practiced:** Extracting from two separate CSV files, merging them into one unified dataset, and applying the full ETL pattern using a modular structure.

**What was new from project 05:**
- Extracting from two data sources instead of one
- Merging two dataframes using `.merge()` on a shared key (`supplier_id`)
- Understanding `how="left"` — keep all products even if they have no matching supplier

**Why it matters:**
Data is rarely stored in one place. Sometimes it is scattered across multiple
sources — merging two or more datasets is important so the final output is
meaningful, complete, and ready to be used.

**Project structure:**
```bash
06_products_suppliers_etl/
├── main.py          ← orchestrates the pipeline
├── extract.py       ← reads both CSV files
├── transform.py     ← merges sources, then cleans and shapes data
├── load.py          ← writes to the database
├── products.csv     ← 1,000 rows
└── suppliers.csv    ← 5 rows
```

**Tools used:** pandas, sqlalchemy, SQLite

**Transformations applied:**
- Merged `products.csv` and `suppliers.csv` on `supplier_id` using a left join
- Converted `date_added` from string to datetime
- Extracted `year_added` from `date_added` using `.dt.year`
- Added `total_value` column — `stock_quantity × unit_price`
- Added `needs_reorder` column — `True` if stock is below reorder level
- Filtered out out-of-stock products

**How to run:**
```bash
pip install pandas sqlalchemy
python main.py
```

**Key concept learned:**
`.merge()` joins two dataframes on a shared key — similar to SQL JOIN.
`how="left"` keeps all rows from the left dataframe even if there is
no match in the right dataframe.
```bash
df = df_products.merge(df_suppliers, on="supplier_id", how="left")
```