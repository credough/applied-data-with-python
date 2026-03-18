import pandas as pd

def transform(df_prod, df_supp):
    #merge products with suppliers on supplier_id
    df = df_prod.merge(df_supp, on="supplier_id", how="left")
    print(f"Rows after merge: {len(df)}")

    #convert date_added to proper date time type
    df["date_added"] = pd.to_datetime(df["date_added"])

    #extract year from date_added
    df["year"] = df["date_added"].dt.year

    #add a derived column: total inventory value per product
    df["total_inventory_value"] = df["unit_price"] * df["stock_quantity"]
    
    #add a boolean flag: flag rpoducts that need reordering stock < reorder_lvl
    df["need_reorder"] = df["stock_quantity"] < df["reorder_level"]
    
    #filter: keep only products that are in stock
    df = df[df["stock_quantity"] > 0]

    print(f"ROWS after filter: {len(df)}")

    return df