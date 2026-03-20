from sqlalchemy import create_engine

def load(df, db_name, table_name):
    engine = create_engine(f"sqlite:///{db_name}")

    df.to_sql(table_name, engine, if_exists="replace", index=False)

    print(f"Rows loaded in '{table_name}': {len(df)}")

    return df