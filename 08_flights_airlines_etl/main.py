from extract import extract
from transform import transform
from load import load

def main():
    #extract
    df_airlines = extract("08_flights_airlines_etl/airlines.csv")
    df_flights = extract("08_flights_airlines_etl/flights.csv")

    #transform
    df = transform(df_airlines, df_flights)

    #load
    load(df, "flights.sqlite", "flights_airlines")
    #summary 1: High fare AND full flights ["flight_code", "airline_name", "origin", "destination", "fare", "load_factor_pct"]
    print("High fare and Full Flights\n")
    print(df[(df["is_high_fare"] == True) & (df["full_flights"] == True)]
        [
            ["flight_code", "airline_name", "origin", "destination", "fare", "load_factor_%"]
            ])
    #summary 2: Severely delayed OR cancelled flights per airline ["flight_code", "airline_name", "origin", "destination", "delay_mins", "delay_severity"]
    print(df[(df["delay_severity"] == "severe") | (df["status"] == "cancelled")])

if __name__ == "__main__":
  main()