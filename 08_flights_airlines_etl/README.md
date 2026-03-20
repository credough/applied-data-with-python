## 08 — Flights + Airlines ETL (Multi-Source)

**What I practiced:** Extracting from two CSV files, merging them on a shared key, and applying all ETL concepts learned so far — reinforcing the full modular pipeline pattern.

**What was new from project 07:**
- Extracting more parts from a datetime column — day of week using `.dt.day_name()` and hour using `.dt.hour`
- Working with datetime columns that include both date and time (not just date)

**Why it matters:**
Extracting the hour and day of week from a datetime opens up time-based
analysis — like finding which hour has the most delays or which day has
the highest load factor.

**Project structure:**
```
08_flights_airlines_etl/
├── main.py          ← orchestrates the pipeline
├── extract.py       ← reads both CSV files
├── transform.py     ← merges sources, then cleans and shapes data
├── load.py          ← writes to the database
├── flights.csv      ← 1,000 rows
└── airlines.csv     ← 10 rows
```

**Tools used:** pandas, sqlalchemy, SQLite

**Transformations applied:**
- Merged `flights.csv` and `airlines.csv` on `airline_id` using a left join
- Converted `scheduled_departure` and `actual_departure` from string to datetime
- Extracted `departure_month`, `departure_day`, and `departure_hour` from `scheduled_departure`
- Added `load_factor_pct` column — `(passengers / capacity) × 100`
- Added `delay_severity` column — classified as No Delay, Minor, Moderate, or Severe using `.apply()`
- Added `is_high_fare` column — `True` if `fare` > 10,000
- Added `is_full_flight` column — `True` if `load_factor_pct` >= 90%
- Filtered out cancelled flights

**How to run:**
```
pip install pandas sqlalchemy
python main.py
```

**Key concept learned:**
The `.dt` accessor can extract more than just month — you can pull
day of week, hour, minute, and more from a datetime column.
```python
df["departure_day"]  = df["scheduled_departure"].dt.day_name()
df["departure_hour"] = df["scheduled_departure"].dt.hour
```