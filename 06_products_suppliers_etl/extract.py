import pandas as pd

def extract(filename):
    df = pd.read_csv(filename)

    print(f"Rows loaded: {len(df)}")
    return df