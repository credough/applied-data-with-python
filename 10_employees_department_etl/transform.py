import pandas as pd

def transform(df_emp, df_depts):
   #merge
   df = df_emp.merge(df_depts, on="dept_id", how="left")
   print(f"ROWS after merge: {len(df)}")

   #convert hire_date to datetime
   df["hire_date"] = pd.to_datetime(df["hire_date"])
   #extract hire year and hire month
   df["hire_year"] = df["hire_date"].dt.year
   df["hire_month"] = df["hire_date"].dt.month_name()
   #calculate years of service from hire_date (pd.Timestamp)
   Current = pd.Timestamp("2024-12-31")

   df["years_of_service"] = ((Current - df["hire_date"]).dt.days / 365).round(1)
   #classify seniority level based on years of service (probationary-1, junior-3, mid-level-6, senior-10, veteran > 10)
   def seniority(years):
      if years < 1:
         return "probationary"
      elif years < 3:
         return "junior"
      elif years < 6:
         return "mid-level"
      elif years < 10:
         return "senior"
      else:
         return "veteran"
   df["seniority_level"] = df["years_of_service"].apply(seniority)
   #classify performance rating from performance_score (outsanding 4.5, exceeds expectation 3.5, meets expectation 2.5, needs improvement 1.5, unsatisfactory)
   def performane_rating(score):
      if score >= 4.5:
         return "outstanding"
      elif score >= 3.5:
         return "exceeds expectation"
      elif score >= 2.5:
         return "meets expectation"
      elif score >= 1.5:
         return "need improvement"
      else:
         return "unsatidfactory" 
      
   df["performance_rating"] = df["performance_score"].apply(performane_rating)
   #classify salary band relative to department budget (ratio = salary/avg_salary_budget) (above band, within band, below band)
   def salary_band (row):
      ratio = row["salary"] / row["avg_salary_budget"]
      if ratio >= 1.5:
         return "above band"
      elif ratio >= 0.8:
         return "within band"
      elif ratio:
         return "below band"
      
   df["salary_band"] = df.apply(salary_band, axis=1)
   #Add derived column: overtime pay (salary / 160 hours * 1.25 * overtime_hrs)
   df["overtime_pay"] = round((df["salary"] / 160) * 1.25 * df["overtime_hrs"], 2)
   #Add boolean flags.. top_performer = performance_score > 4.5, is_excessive_absences = absence > 15, is_tech_division = division = "Technology"
   df["is_top_performer"] = df["performance_score"] >= 4.5
   df["is_excessive_absences"] = df["absences"] > 15
   df["is_tech_division"] = df["division"] == "Technology"
   #Keep only active and on_leave employees
   df = df[df["status"] != "resigned"]
   #print

   #return
   return df