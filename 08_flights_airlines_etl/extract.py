import pandas as pd

def extract(filename):
    df = pd.read_csv(filename)
    print(f"Rows loaded before filter: {len(df)}")
    return df
