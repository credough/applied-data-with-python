import pandas as pd

def extract(filename):
   df = pd.read_csv(filename)
   print(f"[EXTRACT] Rows extracted: {len(df)}")
   
   return df