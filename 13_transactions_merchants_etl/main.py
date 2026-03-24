from extract import extract
from load import load
from transform import transform

def main():
 df_merchants = extract("13_transactions_merchants_etl/merchants.csv")
 df_transactions = extract("13_transactions_merchants_etl/transactions.csv")

 df = transform(df_merchants, df_transactions)

 load(df, "merchants_transactions.sqlite", "merchants_transactions")
 

if __name__ == "__main__":
  main()