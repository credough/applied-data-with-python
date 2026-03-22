from extract import extract
from load import load
from transform import transform

def main ():
 df_loans = extract("12_loans_borrowers_etl/loans.csv")
 df_borrowers = extract("12_loans_borrowers_etl/borrowers.csv")

 df = transform(df_loans,df_borrowers)

 load(df, "borrower_loan.sqlite", "borrower_loan")

 print("\nHigh risk loans with critical debt burden:")
 print(df[(df["is_high_risk"] == True) & (df["is_critical_burden"] == True)][
            ["loan_code", "full_name", "loan_type", "loan_amount",
            "loan_risk", "debt_burden", "credit_rating"]
        ])
    
 print("\nOverdue large loans:")
 print(df[(df["is_overdue"] == True) & (df["is_large_loan"] == True)][
            ["loan_code", "full_name", "loan_amount", "days_remaining",
            "remaining_balance", "repayment_status", "region"]
        ])
    
 print("\nHigh risk borrowers almost done paying:")
 print(df[(df["is_high_risk"] == True) & (df["repayment_status"] == "Almost Paid")][
            ["loan_code", "full_name", "loan_amount", "remaining_balance",
            "repayment_pct", "loan_risk", "credit_rating"]
        ])

if __name__ == "__main__":
    main()