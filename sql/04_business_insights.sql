USE hr_attrition;


--  Rank Job Roles by Attrition Rate

WITH role_attrition AS (

    SELECT
        JobRole,
        COUNT(*) AS Total_Employees,

        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) AS Employees_Left,

        ROUND(
            SUM(
                CASE
                    WHEN Attrition = 'Yes' THEN 1
                    ELSE 0
                END
            ) * 100.0 / COUNT(*),
            2
        ) AS Attrition_Rate

    FROM employees
    GROUP BY JobRole

)

SELECT
    JobRole,
    Total_Employees,
    Employees_Left,
    Attrition_Rate,

    DENSE_RANK() OVER (
        ORDER BY Attrition_Rate DESC
    ) AS Attrition_Rank

FROM role_attrition
ORDER BY Attrition_Rank;


-- Employees Below Department Average Income

SELECT
    e.EmployeeNumber,
    e.Department,
    e.JobRole,
    e.MonthlyIncome,
    e.Attrition,

    ROUND(
        (
            SELECT AVG(e2.MonthlyIncome)
            FROM employees e2
            WHERE e2.Department = e.Department
        ),
        2
    ) AS Department_Average_Income

FROM employees e

WHERE e.MonthlyIncome < (
    SELECT AVG(e2.MonthlyIncome)
    FROM employees e2
    WHERE e2.Department = e.Department
)

ORDER BY e.Department, e.MonthlyIncome;


-- Attrition by Overtime and Job Satisfaction

WITH satisfaction_analysis AS (

    SELECT
        OverTime,
        JobSatisfaction,

        COUNT(*) AS Total_Employees,

        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) AS Employees_Left

    FROM employees

    GROUP BY OverTime, JobSatisfaction

)

SELECT
    OverTime,
    JobSatisfaction,
    Total_Employees,
    Employees_Left,

    ROUND(
        Employees_Left * 100.0 / Total_Employees,
        2
    ) AS Attrition_Rate

FROM satisfaction_analysis

ORDER BY Attrition_Rate DESC;


-- High Attrition Employee Segments

SELECT
    CASE
        WHEN YearsAtCompany <= 1 THEN 'New Employees'
        WHEN YearsAtCompany BETWEEN 2 AND 5 THEN 'Early Career'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN 'Mid Career'
        ELSE 'Experienced Employees'
    END AS Employee_Segment,

    OverTime,

    COUNT(*) AS Total_Employees,

    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,

    ROUND(
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employees

GROUP BY Employee_Segment, OverTime

ORDER BY Attrition_Rate DESC;



--  Employee Income Ranking Within Departments

SELECT
    EmployeeNumber,
    Department,
    JobRole,
    MonthlyIncome,

    DENSE_RANK() OVER (
        PARTITION BY Department
        ORDER BY MonthlyIncome DESC
    ) AS Income_Rank

FROM employees

ORDER BY Department, Income_Rank;