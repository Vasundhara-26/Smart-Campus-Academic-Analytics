import csv

def generate_analytics_summary():
    students = [
        {"id": 101, "name": "Vasundhara Yadav", "gpa": 3.85, "attendance": 94.5},
        {"id": 102, "name": "Rohan Sharma", "gpa": 2.40, "attendance": 72.0}
    ]
    
    print("--- Python Analytics Processor ---")
    high_performers = [s for s in students if s["gpa"] >= 3.5]
    at_risk = [s for s in students if s["gpa"] < 3.0]
    
    print(f"Total Students Analyzed: {len(students)}")
    print(f"High Performers: {len(high_performers)}")
    print(f"Students Requiring Academic Support: {len(at_risk)}")

if __name__ == "__main__":
    generate_analytics_summary()
