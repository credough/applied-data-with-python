import pandas as pd
from sqlalchemy import create_engine

#extract

df = pd.read_csv("01_etl_basics/employees.csv")

#transform

df["salary_monthly"] = df["salary"] / 12
df["salary_every_15"] = df["salary"] / 24
df["hire_date"] = pd.to_datetime(df["hire_date"])
df = df[df["salary"] > 60000]

#load

engine = create_engine("sqlite:///employees.sqlite")
df.to_sql("employees", engine, if_exists="replace", index=False)

#confirm
print("Done! Rows loaded:", len(df))