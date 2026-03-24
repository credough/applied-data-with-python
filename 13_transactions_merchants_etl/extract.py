import pandas as pd

def extract(filename):
    df = pd.read_csv(filename)

    print("Rows after EXTRACT:\n")
    print(f"{len(df)}")

    return df