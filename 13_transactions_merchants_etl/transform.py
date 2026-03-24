import pandas as pd

def transform(df_merchants, df_transactions):
    df = df_transactions.merge(df_merchants, on="merchant_id", how="left")

    print("Rows loaded after MERGE\n")
    print(f"{len(df)}")

    #rename status_x and status_y
    df.rename(columns = {"status_x": "txn_status", "status_y": "merchant_status"}, inplace=True)

    #convert date columns to datetime
    df["registration_date"] = pd.to_datetime(df["registration_date"])
    df["txn_date"] = pd.to_datetime(df["txn_date"])
    df["completed_date"] = pd.to_datetime(df["completed_date"])

    #Datetime extraction(year, month, day, hour)
    df["txn_year"] = df["txn_date"].dt.year
    df["txn_month"] = df["txn_date"].dt.month_name()
    df["txn_day"] = df["txn_date"].dt.day_name()
    df["txn_hour"] = df["txn_date"].dt.hour

    #Date arithmetic: actual processing duration between two columns, actual_processing_secs (completed_date - txn_date in secs)
    df["actual_processing_secs"] = (df["completed_date"] - df["txn_date"]).dt.seconds
    #Date arithmetic: days since merchant registration (fixed reference)
    current = pd.Timestamp("2026-3-24")
    df["days_since_merchant_registration"] = current - df["registration_date"]

    #Classify transaction size (<500-micro, <5000-small, <20000-medium, large)
    def txn_size(size):
        if size < 500:
            return "micro"
        elif size < 5000:
            return "small"
        elif size < 20000:
            return "medium"
        else:
            return "large"
        
    df["transaction_size"] = df["amount"].apply(txn_size)
        
    #Classify time of day (<6 - latenight, <12 - morning, <18 - afternoon, evening)
    def time_of_day (hr):
        if hr < 6:
            return "late night"
        elif hr < 12:
            return "morning"
        elif hr < 18:
            return "afternoon"
        else:
            return "evening"
    
    df["time_of_day"] = df["txn_hour"].apply(time_of_day)

    #Row-wise: flag suspicious transactions 
    def is_suspicious(row):
        if row["amount"] > (row["avg_transaction_value"] * 5) and not row["is_verified"]:
            return True
        
        return False
 
    df["is_suspicious"] = df.apply(is_suspicious, axis=1)

    #Row-wise: classify merchant performance
    def merchant_performance (row):
        score = 0
        if row["monthly_transactions"] >= 100:
            score += 2
        elif row["monthly_transactions"] >= 50:
            score += 1
        if row["avg_transaction_value"] >= 10000:
            score += 2
        elif row["avg_transaction_value"] >= 1000:
            score += 1

        if score >= 3:
            return "High Performer"
        elif score >= 1:
            return "Average Performer"
        else:
            return "Low Performer"

    df["merchant_performance"] = df.apply(merchant_performance, axis=1)

    #Boolean flags
    df["is_large_txn"] = df["transaction_size"] == "large"
    df["is_weekend"] = df["txn_day"].isin(["Saturday","Saturday"])
    df["is_suspicious_and_completed"] = (df["is_suspicious"] == True) & (df["merchant_status"] == "completed")

    #Filter: keep only completed and refunded transactions
    df = df["merchant_status"].isin(["completed", "refunded"])
    
    print(f"ROWS after filter[TRANSFORM]: {len(df)}")
    return df