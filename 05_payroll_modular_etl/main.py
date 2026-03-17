from extract import extract
from load import load
from transform import transform

def main():
    #extract
    df = extract("05_payroll_modular_etl/payroll_records.csv")
    #transform
    df = transform(df)
    #load
    load(df, "payroll.sqlite", "payroll")
    #summary
    print("Employees that are high earners\n")
    print(df[df["net_pay"] > 80000][["employee_name", "department", "position", "net_pay"]])

if __name__ == "__main__":
    main()
