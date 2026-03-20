## 09 — Students + Courses ETL (Multi-Source)

**What I practiced:** Extracting from two CSV files, merging them on a shared key, and applying the full ETL pattern using a modular structure — reinforcing all concepts from previous projects.

**What was new from project 08:**
- Combining two non-flag columns directly in a filter condition instead of using pre-built boolean flag columns

**Why it matters:**
You don't always need a pre-built boolean flag column to filter.
Sometimes you can combine raw columns directly in the condition —
it's more concise and works exactly the same way.

**Project structure:**
```
09_students_courses_etl/
├── main.py          ← orchestrates the pipeline
├── extract.py       ← reads both CSV files
├── transform.py     ← merges sources, then cleans and shapes data
├── load.py          ← writes to the database
├── students.csv     ← 1,000 rows
└── courses.csv      ← 20 rows
```

**Tools used:** pandas, sqlalchemy, SQLite

**Transformations applied:**
- Merged `students.csv` and `courses.csv` on `course_id` using a left join
- Converted `enrollment_date` from string to datetime
- Extracted `month` and `year` from `enrollment_date`
- Added `remark` column — classified as Excellent, Very Good, Good, Passing, or Failed using `.apply()`
- Added `on_risk` column — `True` if `grade` > 3.0
- Added `on_IT` column — `True` if `department` is IT
- Filtered out dropped enrollments

**How to run:**
```
pip install pandas sqlalchemy
python main.py
```

**Key concept learned:**
You don't always need a boolean flag column to filter with `&` —
you can combine raw column conditions directly in the filter.
```python
# Using pre-built flag columns (previous projects)
df[(df["is_high_fare"] == True) & (df["is_full_flight"] == True)]

# Using raw column conditions directly (this project)
df[(df["remark"] == "Excellent") & (df["status"] == "passed")]
```