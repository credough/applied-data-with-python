import pandas as pd

def transform(df_cust, df_ord):
    #merge
    df = df_ord.merge(df_cust, on="customer_id", how="left")
    print(f"Rows after merge: {len(df)}")
    #convert order_date and registration_date to datetime
    df["order_date"] = pd.to_datetime(df["order_date"])
    df["registration_date"] = pd.to_datetime(df["registration_date"])
    #extract month and year from order_date
    df["month"] = df["order_date"].dt.month_name()
    df["year"] = df["order_date"].dt.year
    #add a derived column: classify order size (.apply)
    def order_size(total):
        if total < 1000:
            return "small"
        elif total < 10000:
            return "medium"
        else:
            return "large" 
    
    df["order_size"] = df["total_amount"].apply(order_size)

    #add a boolean flag: flag gold member orders
    df["gold_member"] = df["membership"] = "gold"
    #filter: keep only delivered orders
    df = df[df["status"] == "delivered"]
    #print rows after filter
    print(f"Number of Rows after filter: {len(df)}")

    return df


