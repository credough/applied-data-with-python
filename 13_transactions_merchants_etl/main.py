from extract import extract
from transform import transform
from load import load


def main():
    df_transactions = extract("13_transactions_merchants_etl/transactions.csv")
    df_merchants = extract("13_transactions_merchants_etl/merchants.csv")

    df = transform(df_transactions, df_merchants)

    load(df, "transactions_merchants.sqlite", "transactions_with_merchants")

    print("\nSuspicious large transactions:")
    print(df[(df["is_suspicious"] == True) & (df["is_large_txn"] == True)][
        ["txn_code", "merchant_name", "category", "amount",
         "avg_transaction_value", "payment_method", "time_of_day"]
    ])

    print("\nHigh performer merchants with large weekend transactions:")
    print(df[(df["merchant_performance"] == "High Performer") &
             (df["is_large_txn"] == True) &
             (df["is_weekend"] == True)][
        ["txn_code", "merchant_name", "category", "amount",
         "txn_day", "location", "merchant_performance"]
    ])

    print("\nSuspicious evening transactions:")
    print(df[(df["time_of_day"] == "Evening") & (df["is_suspicious"] == True)][
        ["txn_code", "merchant_name", "amount", "txn_hour",
         "time_of_day", "is_verified", "payment_method"]
    ])


if __name__ == "__main__":
    main()