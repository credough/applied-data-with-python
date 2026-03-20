import pandas as pd

def extract(filename):
    df = pd.read_csv(filename)

    print(f"Rows loaded after extract: {len(df)}")
    return df
    