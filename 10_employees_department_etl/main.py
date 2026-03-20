from extract import extract
from transform import transform
from load import load

def main ():
    df_emp = extract("10_employees_department_etl/employees.csv")
    df_dept = extract("10_employees_department_etl/departments.csv")

    df = transform(df_dept, df_emp)

    load(df, "employee_departments.sqlite", "employee_records")

    print("High Performer in Tech\n")

    print(df[(df["is_top_performer"] == True) & (df["is_tech_division"] == True)][["employee_code", "full_name", "dept_name", "position",
         "performance_rating", "seniority_level", "salary_band"]
    ])

    print("Veteran Employees with Excessive Absences\n")
    print(df[(df["is_excessive_absences"] == True) & (df["seniority_level"] == "veteran")][["employee_code", "full_name", "dept_name", "position",
         "performance_rating", "seniority_level", "salary_band"]])

    print("Above salary bands that needs improvement\n")
    print(df[(df["salary_band"] == "above band") & (df["performance_rating"] == "need improvement")][["employee_code", "full_name", "dept_name", "position",
         "performance_rating", "seniority_level", "salary_band"]])

 
if __name__ == "__main__":
    main()