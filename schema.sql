-- Smart Campus Academic Analytics Database Schema (Oracle SQL)

CREATE TABLE Students (
    student_id NUMBER PRIMARY KEY,
    full_name VARCHAR2(100) NOT NULL,
    department VARCHAR2(50),
    gpa NUMBER(3,2),
    attendance_rate NUMBER(5,2)
);

CREATE TABLE Academic_Risk_Logs (
    log_id NUMBER PRIMARY KEY,
    student_id NUMBER REFERENCES Students(student_id),
    risk_level VARCHAR2(20),
    calculated_on DATE DEFAULT SYSDATE
);

-- Sample Data Insertion
INSERT INTO Students VALUES (101, 'Vasundhara Yadav', 'CS-AI', 3.85, 94.5);
INSERT INTO Students VALUES (102, 'Rohan Sharma', 'CS', 2.40, 72.0);

-- Query to identify students requiring academic intervention
SELECT student_id, full_name, gpa, attendance_rate
FROM Students
WHERE gpa < 3.0 OR attendance_rate < 75.0;
