import pandas as pd
from sqlalchemy import create_engine


df = pd.read_csv("04_hospital_etl/hospital_records.csv")

#transform
df["admission_date"] = pd.to_datetime(df["admission_date"])
df["month"] = df["admission_date"].dt.month_name()

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

df["high_bill"] = df["bill_amount"] > 100000

df = df[df["status"] == "discharged"]

engine = create_engine("sqlite:///hospital.sqlite")
df.to_sql("hospital", engine, if_exists="replace", index=False)

print("Rows produced:", len(df))
print("\nHigh Bill Discharged Patients")
print(df[df["high_bill"] == True][["record_id", "patient_id", "diagnosis", "admission_date"]])