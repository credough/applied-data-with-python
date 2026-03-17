import pandas as pd

def extract(filename):
    df = pd.read_csv(filename)
    print("Rows extracted:", len(df))
    
    return df