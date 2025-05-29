CREATE DATABASE IF NOT EXISTS EmployeeDB;
USE EmployeeDB;


CREATE TABLE IF NOT EXISTS Employee (
    Empno INT PRIMARY KEY,
    EmpName VARCHAR(100),
    DoJ DATE,
    Gender VARCHAR(10),
    Bsalary DECIMAL(10, 2)
);


INSERT INTO Employee (Empno, EmpName, DoJ, Gender, Bsalary) VALUES
(1001, 'Alice Johnson', '2015-06-01', 'Female', 55000.00),
(1002, 'Bob Smith', '2018-03-15', 'Male', 47000.00),
(1003, 'Charlie Brown', '2020-09-25', 'Male', 60000.00),
(1004, 'Diana Prince', '2010-12-20', 'Female', 72000.00),
(1005, 'Ethan Hunt', '2012-04-10', 'Male', 80000.00);

