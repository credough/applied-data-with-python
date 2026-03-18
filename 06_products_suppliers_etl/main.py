from load import load
from extract import extract
from transform import transform

def main():
  df_prod = extract("06_products_suppliers_etl/products.csv")
  df_supp = extract("06_products_suppliers_etl/suppliers.csv")

  df = transform(df_prod, df_supp)

  load(df, "prod_supp.sqlite", "prod_supp")

  print(f"Products that need reordering\n")
  print(df[df["need_reorder"] == True][["product_id", "product_name", "category"]])
  


if __name__ == "__main__":
  main()