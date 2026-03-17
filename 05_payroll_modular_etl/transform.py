import pandas as pd

def transform(df):
    #convert date columns to proper datetime type
    df["hire_date"] = pd.to_datetime(df["hire_date"])
    df["pay_date"] = pd.to_datetime(df["pay_date"])
    #extract hire year from hire_date
    df["year_hire"] = df["hire_date"].dt.year
    #add a derived column: total deductions
    df["total_deductions"] = df["tax"] + df["sss"] + df["philhealth"]
    #add a boolean flag: flag high earners (net_pay > 80k)
    df["high_earners"] = df["net_pay"] > 80000
    #filter: keep only activeemployees
    df = df[df["status"] == "active"]
    #print rows after filter
    print(f"Rows after filtered: {df}")
    return df