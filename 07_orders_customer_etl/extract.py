import pandas as pd

def extract(filename):
    df = pd.read_csv(filename)
    print(f"Number of rows extracted: {df}")
    return df