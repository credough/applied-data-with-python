import pandas as pd

def transform(df_airlines, df_flights):
    #merge flights with airlines on airline_id
    df = df_flights.merge(df_airlines, on="airline_id", how="left")
    print(f"Rows after merge: {len(df)}")
    #convert scheduled_departure and actual_departure to datetime
    df["scheduled_departure"] = pd.to_datetime(df["scheduled_departure"])
    #extract month, day of week, hour from scheduled_departure
    df["month"] = df["scheduled_departure"].dt.month_name()
    df["day"] = df["scheduled_departure"].dt.day_name()
    df["hour"] = df["scheduled_departure"].dt.hour
    #add a derived column: load factor (how full the flight is)
    df["load_factor_%"] = round(df["passengers"] / df["capacity"] * 10, 2)
    #add a derived column: classify delay severity
    def delay_severity(mins):
        if mins == 0:
         return "no delay"
        elif mins < 30:
         return "minor"
        elif mins < 60:
         return "major"
        else:
         return "severe"
    
    df["delay_severity"] = df["delay_mins"].apply(delay_severity)
    #add boolean flag: flag high fare flights (fare >= 10000)
    df["is_high_fare"] = df["fare"] > 10000
    #add a boolean flag: flag full flights (load factor <= 90%)
    df["full_flights"] = df["load_factor_%"] >= 90
    #filter: keep only on_time and delayed flights (exclude cancelled)
    df = df[df["status"] != "cancelled"]

    print(f"Rows after filter: {len(df)}")

    return df