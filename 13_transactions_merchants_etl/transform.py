import pandas as pd


def transform(df_transactions, df_merchants):
    df = df_transactions.merge(df_merchants, on="merchant_id", how="left")
    print(f"[TRANSFORM] Rows after merge: {len(df)}")

    df.rename(columns={"status_x": "txn_status", "status_y": "merchant_status"}, inplace=True)

    # convert date columns to datetime
    df["txn_date"] = pd.to_datetime(df["txn_date"])
    df["completed_date"] = pd.to_datetime(df["completed_date"])
    df["registration_date"] = pd.to_datetime(df["registration_date"])

    # datetime extraction
    df["txn_year"] = df["txn_date"].dt.year
    df["txn_month"] = df["txn_date"].dt.month_name()
    df["txn_day"] = df["txn_date"].dt.day_name()
    df["txn_hour"] = df["txn_date"].dt.hour

    # date arithmetic: actual processing duration between two columns
    df["actual_processing_secs"] = (df["completed_date"] - df["txn_date"]).dt.seconds

    # date arithmetic: days since merchant registration (fixed reference)
    current = pd.Timestamp("2024-12-31")
    df["merchant_age_days"] = (current - df["registration_date"]).dt.days

    # classify transaction size
    def txn_size(amount):
        if amount < 500:
            return "Micro"
        elif amount < 5000:
            return "Small"
        elif amount < 20000:
            return "Medium"
        else:
            return "Large"

    df["txn_size"] = df["amount"].apply(txn_size)

    # classify time of day
    def time_of_day(hour):
        if hour < 6:
            return "Late Night"
        elif hour < 12:
            return "Morning"
        elif hour < 18:
            return "Afternoon"
        else:
            return "Evening"

    df["time_of_day"] = df["txn_hour"].apply(time_of_day)

    # row-wise: flag suspicious transactions
    def is_suspicious(row):
        if row["amount"] > row["avg_transaction_value"] * 5 and not row["is_verified"]:
            return True
        return False

    df["is_suspicious"] = df.apply(is_suspicious, axis=1)

    # row-wise: classify merchant performance
    def merchant_performance(row):
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

    # boolean flags
    df["is_large_txn"] = df["txn_size"] == "Large"
    df["is_weekend"] = df["txn_day"].isin(["Saturday", "Sunday"])
    df["is_suspicious_and_completed"] = (df["is_suspicious"] == True) & (df["txn_status"] == "completed")

    # filter: keep only completed and refunded transactions
    df = df[df["txn_status"].isin(["completed", "refunded"])]

    print(f"[TRANSFORM] Rows after filter: {len(df)}")
    return df