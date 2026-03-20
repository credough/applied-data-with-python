from extract import extract
from transform import transform
from load import load

def main():
 df_students = extract("09_students_courses_etl/students.csv")
 df_courses = extract("09_students_courses_etl/courses.csv")

 df = transform(df_students, df_courses)

 load(df, "students_course.sqlite", "enrollment_records")
 
#summary: at risk students taking IT courses ["student_id", "student_name", "course_name", "grade", "remarks", "semester"]
 print(df[(df["on_risk"] == True) & (df["on_IT"] == True)] [["student_id", "student_name", "course_name", "grade", "remark", "semester"]])
#summary: excellent students
 print(df[(df["remark"] == "Excellent") & (df["status"] == "passed")] [["student_id", "student_name", "course_name", "grade", "remark", "semester"]])

 
if __name__ == "__main__":
    main()