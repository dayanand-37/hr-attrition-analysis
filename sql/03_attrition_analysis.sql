USE hr_attrition;


-- Overall Attrition Analysis

SELECT
    COUNT(*) AS Total_Employees,

    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS Employees_Left,

    SUM(CASE
        WHEN Attrition = 'No' THEN 1
        ELSE 0
    END) AS Employees_Stayed,

    ROUND(
        SUM(CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employees;


-- Department-wise Attrition

SELECT
    Department,

    COUNT(*) AS Total_Employees,

    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS Employees_Left,

    ROUND(
        SUM(CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employees

GROUP BY Department

ORDER BY Attrition_Rate DESC;


--  Job Role-wise Attrition

SELECT
    JobRole,

    COUNT(*) AS Total_Employees,

    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS Employees_Left,

    ROUND(
        SUM(CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employees

GROUP BY JobRole

ORDER BY Attrition_Rate DESC;



-- Overtime vs Attrition

SELECT
    OverTime,

    COUNT(*) AS Total_Employees,

    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS Employees_Left,

    ROUND(
        SUM(CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employees

GROUP BY OverTime

ORDER BY Attrition_Rate DESC;


-- Age Group-wise Attrition

SELECT
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS Age_Group,

    COUNT(*) AS Total_Employees,

    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS Employees_Left,

    ROUND(
        SUM(CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employees

GROUP BY Age_Group

ORDER BY MIN(Age);



-- Tenure-wise Attrition

SELECT
    CASE
        WHEN YearsAtCompany BETWEEN 0 AND 1 THEN '0-1 Years'
        WHEN YearsAtCompany BETWEEN 2 AND 5 THEN '2-5 Years'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 Years'
        WHEN YearsAtCompany BETWEEN 11 AND 20 THEN '11-20 Years'
        ELSE '21+ Years'
    END AS Tenure_Group,

    COUNT(*) AS Total_Employees,

    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS Employees_Left,

    ROUND(
        SUM(CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employees

GROUP BY Tenure_Group

ORDER BY MIN(YearsAtCompany);



--  Business Travel vs Attrition

SELECT
    BusinessTravel,

    COUNT(*) AS Total_Employees,

    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS Employees_Left,

    ROUND(
        SUM(CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employees

GROUP BY BusinessTravel

ORDER BY Attrition_Rate DESC;




-- Monthly Income vs Attrition

SELECT
    Attrition,

    COUNT(*) AS Total_Employees,

    ROUND(AVG(MonthlyIncome), 2) AS Average_Income,

    MIN(MonthlyIncome) AS Minimum_Income,

    MAX(MonthlyIncome) AS Maximum_Income

FROM employees

GROUP BY Attrition

ORDER BY Attrition;