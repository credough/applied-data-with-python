import pandas as pd

def transform(df_loans, df_borrowers):
    df = df_borrowers.merge(df_loans, on="borrower_id", how="left")
    print(f"[MERGE]Rows loaded:{len(df)}")

    #convert date columns to datetim
    df["registration_date"] = pd.to_datetime(df["registration_date"])
    df["start_date"] = pd.to_datetime(df["start_date"])
    df["end_date"] = pd.to_datetime(df["end_date"])
    #datetime extraction (start year and month)
    df["start_year"] = df["start_date"].dt.year
    df["start_month"] = df["start_date"].dt.month_name()

    #date arithmetic (loan duration in years)
    df["loan_duration_years"] = (((df["end_date"] - df["start_date"]).dt.days) / 365).round(1)
    #date arithmetic (days remaining until loan ends) (fixed rereference date)
    today = pd.Timestamp("2024-12-31")
    df["days_remaining"] = (df["end_date"] - today).dt.days
    #add derived column- remaining balance (loan - paid)
    df["remaining_balance"] = df["loan_amount"] - df["amount_paid"]
    #add derived column-repayment progress (paid - loan * 100).round()
    df["repayment_%"] = ((df["amount_paid"] - df["loan_amount"]) * 100).round(1)
    #Classify loan risk based on credit rating and existing loans
    def loan_risk(row):
        score = 0
        if row["credit_rating"] == "Excellent":
            score += 3
        elif row ["credit_rating"] == "Good":
            score += 2
        elif row["credit_rating"] == "Fair":
            score += 1
        if row["existing_loans"] == 0:
            score += 1
        elif row["existing_loans"] <= 2:
            score +=2
        if score >= 4:
            return "Low Risk"
        elif score >= 2:
            return "Medium Risk"
        else:
            return "HIgh Risk"
        
    df["loan_risk"] = df.apply(loan_risk, axis=1)
    #Classify debt burden based on monthly payment vs monthly income
    def debt_burden(row):
        if row["monthly_income"] == 0:
            return "unknown"
        basis = (row["monthly_payment"] / row["monthly_income"]) * 100

        if basis <= 20:
            return "manageable"
        elif basis <= 35:
            return "moderate"
        elif basis <= 50:
            return "heavy"
        else:
            return "critical"
        
    df["debt_burden"] = df.apply(debt_burden, axis=1)

    #Classify repayment status
    def repayment_pct(x):
        if x >= 90:
            return "almost paid"
        elif x>= 50:
            return "halfway"
        elif x>= 25:
            return "early stage"
        else:
            return "just started"
        
    df["repayment_status"] = df["repayment_%"].apply(repayment_pct)

    #Boolean flags
    df["is_overdue"] = (df["status"] == "active") & (df["days_remaining"] < 0)
    df["is_high_risk"] = df["loan_risk"] == "HIgh Risk"
    df["is_large_loan"] = df["loan_amount"] > 1000000
    df["is_critical_burden"] = df["debt_burden"] == "critical"
    #Filter: exclude paid loans
    df = df[df["status"] != "paid"]

    return df