import pandas as pd
from sqlalchemy import create_engine

#extract
df = pd.read_csv("03_sales_data_etl/sales_data.csv")
print(f"Rows extracted: {df}")

#transform
#convert transaction_date to proper datetime type
df["transaction_date"] = pd.to_datetime(df["transaction_date"])

#add a month column derived from transaction_date
df["month"] = df["transaction_date"].dt.month_name()

#add a column flagging high value transaction (total > 10000)
df["high_value"] = df["total_amount"] > 10000

#filter: keep only completed transactions
df = df[df["status"] == "completed"]

#load
engine = create_engine("sqlite:///sales.sqlite")
df.to_sql("sales", engine, if_exists="replace", index=False)

print("Rows loaded after filter", len(df))
print("\nHigh Value Completed Transactions:")
print(df[df["high_value"] == True][["product_name", "region", "salesperson", "total_amount"]])