USE hr_attrition;

SELECT
    COUNT(*) - COUNT(Age) AS Age_Null,
    COUNT(*) - COUNT(Attrition) AS Attrition_Null,
    COUNT(*) - COUNT(Department) AS Department_Null,
    COUNT(*) - COUNT(MonthlyIncome) AS MonthlyIncome_Null,
    COUNT(*) - COUNT(JobRole) AS JobRole_Null,
    COUNT(*) - COUNT(YearsAtCompany) AS YearsAtCompany_Null
FROM employees;


SELECT
    Department,
    COUNT(*) AS Total_Employees
FROM employees
GROUP BY Department
ORDER BY Total_Employees DESC;


SELECT
    JobRole,
    COUNT(*) AS Total_Employees
FROM employees
GROUP BY JobRole
ORDER BY Total_Employees DESC;


SELECT
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS Age_Group,

    COUNT(*) AS Total_Employees

FROM employees
GROUP BY Age_Group
ORDER BY MIN(Age);



SELECT
    COUNT(*) AS Total_Employees,

    ROUND(AVG(Age), 2) AS Average_Age,

    ROUND(AVG(MonthlyIncome), 2) AS Average_Monthly_Income,

    ROUND(AVG(YearsAtCompany), 2) AS Average_Tenure,

    ROUND(AVG(TotalWorkingYears), 2) AS Average_Working_Experience

FROM employees;


-- Income statistics by department

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    ROUND(AVG(MonthlyIncome), 2) AS Average_Income,
    MIN(MonthlyIncome) AS Minimum_Income,
    MAX(MonthlyIncome) AS Maximum_Income

FROM employees

GROUP BY Department

ORDER BY Average_Income DESC;


--  Duplicate employee ID validation

SELECT
    EmployeeNumber,
    COUNT(*) AS Record_Count

FROM employees

GROUP BY EmployeeNumber

HAVING COUNT(*) > 1;