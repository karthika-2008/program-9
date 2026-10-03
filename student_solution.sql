USE CollegeDB;

CREATE TABLE Department (
    DepartmentID INT(5),
    DepartmentName VARCHAR(30)
);

CREATE TABLE Student (
    StudentID INT(5),
    StudentName VARCHAR(20),
    DOB DATE,
    Gender VARCHAR(10),
    DepartmentID INT(5)
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Commerce');

INSERT INTO Student (StudentID, StudentName, DOB, Gender, DepartmentID) VALUES
(101, 'Arun', '2005-01-10', 'Male', 1),
(102, 'Karthika', '2005-05-15', 'Female', 2),
(103, 'Priya', '2004-08-20', 'Female', 1);

SELECT
    Student.StudentID,
    Student.StudentName,
    Department.DepartmentName
FROM Student
INNER JOIN Department
ON Student.DepartmentID = Department.DepartmentID;
