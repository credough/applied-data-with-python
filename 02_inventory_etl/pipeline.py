import pandas as pd
from sqlalchemy import create_engine

#extract
df = pd.read_csv("02_inventory_etl/inventory.csv")

#transform
#1. convert to proper datetime
df["date_added"] = pd.to_datetime(df["date_added"])
#2. add total value column
df["total_value"] = df["stock_quantity"] * df["unit_price"]
#3. add column for flagging products that needs reordering
df["needs_reordering"] = df["stock_quantity"] < df["reorder_level"]
#4. only keep products that are still in stock (quantity > 0)
df = df[df["stock_quantity"] > 0]

#loadd
engine = create_engine("sqlite:///inventory.sqlite")

df.to_sql("inventory", engine, if_exists="replace", index=False)

print("Done! Rows loaded:", len(df))
print("\nProducts that need reordering:")
print(df[df["needs_reordering"] == True][["product_id","product_name", "stock_quantity", "reorder_level"]])
print("\nProducts where total value is greater than 50000:")
print(df[df["total_value"] > 50000][["product_name", "total_value", "category"]])