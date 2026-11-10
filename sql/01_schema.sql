
-- ==========================================
-- HR ATTRITION ANALYSIS
-- 01_SCHEMA.SQL
-- ==========================================

-- Create database
CREATE DATABASE IF NOT EXISTS hr_attrition;

-- Select database
USE hr_attrition;

-- Create employee table
CREATE TABLE IF NOT EXISTS employees ( 
    Age INT,
    Attrition VARCHAR(5),
    BusinessTravel VARCHAR(30),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education TINYINT,
    EducationField VARCHAR(50),
    EmployeeNumber INT PRIMARY KEY,
    EnvironmentSatisfaction TINYINT,
    Gender VARCHAR(15),
    HourlyRate INT,
    JobInvolvement TINYINT,
    JobLevel TINYINT,
    JobRole VARCHAR(50),
    JobSatisfaction TINYINT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked TINYINT,
    OverTime VARCHAR(5),
    PercentSalaryHike TINYINT,
    PerformanceRating TINYINT,
    RelationshipSatisfaction TINYINT,
    StockOptionLevel TINYINT,
    TotalWorkingYears INT,
    TrainingTimesLastYear TINYINT,
    WorkLifeBalance TINYINT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);