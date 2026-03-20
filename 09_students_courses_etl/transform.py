import pandas as pd

def transform(df_students, df_courses):
  #merge students with courses on course_id
  df = df_students.merge(df_courses, on="course_id", how="left")
  #convert enrollment_date to datetime
  df["enrollment_date"] = pd.to_datetime(df["enrollment_date"])
  #extract month and year from enrollment_date
  df["month"] = df["enrollment_date"].dt.month_name()
  df["year"] = df["enrollment_date"].dt.year
  #add a derived column: classify grade to remarks
  def grade(grade):
    if grade <= 1.5:
      return "Excellent"
    elif grade <= 2.0:
      return "Very Good"
    elif grade <= 3.0:
      return "Good"
    elif grade <= 4.0:
      return "Passing"
    else:
      return "Failed"
    
  df["remark"] = df["grade"].apply(grade)
  #add a boolean flag: flag students on academic risk (grade > 3.0)
  df["on_risk"] = df["grade"] > 3.0
  #add a boolean flag: flag IT dept courses
  df["on_IT"] = df["department"] == "IT"
  #filter: keep only passed and incomplete statuses
  df = df[df["status"] != "dropped"]
  #print rows after filter
  print(f"No. of rows filtered: {len(df)}")

  return df