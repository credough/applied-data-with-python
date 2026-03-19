from extract import extract
from transform import transform
from load import load

def main():
 df_cust = extract("07_orders_customer_etl/customers.csv")
 df_ord = extract("07_orders_customer_etl/orders.csv")

 df = transform(df_cust, df_ord)

 load(df, "customer_orders.sqlite", "customer_orders")
 print ("Large orders from gold customers:\n")
 print(df[(df["order_size"] == "Large") & (df["is_gold_member"] == True)][
        ["order_code", "full_name", "region", "product_name", "total_amount", "membership"]
    ])


if __name__ == "__main__":
    main()