## 11 — Books + Authors ETL (Multi-Source)

**What I practiced:** Applying the most complex transform pipeline so far — reinforcing all previous concepts while introducing date arithmetic between two existing columns instead of a fixed reference date.

**What was new from project 10:**
- Subtracting two existing date columns from each other to produce a new derived column — instead of using a fixed `pd.Timestamp` reference date

**Why it matters:**
Not all date arithmetic needs a fixed reference point. Sometimes the
meaningful duration is between two columns in the same row — like how
old an author was when they published a book. Each row computes its
own difference independently.

**Project structure:**
```
11_books_authors_etl/
├── main.py          ← orchestrates the pipeline
├── extract.py       ← reads both CSV files
├── transform.py     ← merges sources, then cleans and shapes data
├── load.py          ← writes to the database
├── books.csv        ← 1,000 rows
└── authors.csv      ← 50 rows
```

**Tools used:** pandas, sqlalchemy, SQLite

**Transformations applied:**
- Merged `books.csv` and `authors.csv` on `author_id` using a left join
- Converted `publish_date`, `debut_date`, and `birth_date` from string to datetime
- Extracted `publish_year` and `publish_month` from `publish_date`
- Calculated `years_since_publication` using a fixed reference date (`pd.Timestamp`)
- Calculated `author_age_at_publish` by subtracting `birth_date` from `publish_date`
- Added `book_length` column — classified as Novella, Short, Standard, Long, or Epic using `.apply()`
- Added `rating_tier` column — classified using `.apply()`
- Added `commercial_success` column — computed from `copies_sold × price` using `df.apply(axis=1)`
- Added `value_score` column — computed from `rating / price` using `df.apply(axis=1)`
- Added `is_bestseller`, `is_highly_rated`, `is_veteran_author`, `is_recent_publication` boolean flags
- Filtered to keep only published books

**How to run:**
```
pip install pandas sqlalchemy
python main.py
```

**Key concept learned:**
Date arithmetic works between two existing columns — not just against
a fixed reference date. Each row computes its own difference.
```python
# Fixed reference date (project 10)
current = pd.Timestamp("2024-12-31")
df["years_of_service"] = ((current - df["hire_date"]).dt.days / 365).round(1)

# Two existing columns (this project)
df["author_age_at_publish"] = ((df["publish_date"] - df["birth_date"]).dt.days / 365).round(1)
```