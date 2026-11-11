# Executive Summary
## HR Attrition Analysis — Identifying the Factors Associated with Employee Turnover

### 1. Business Context

Employee attrition can affect workforce continuity, recruitment requirements, operational knowledge and employee-management costs. Understanding where attrition is concentrated can help HR teams identify areas that deserve closer investigation.

This project analyses the IBM HR Analytics Employee Attrition dataset to examine how employee demographics, job characteristics, compensation, work conditions and satisfaction measures are associated with employee turnover. The objective is to convert employee-level data into clear, evidence-based insights that can support HR decision-making.

### 2. Dataset at a Glance

The analysis uses 1,470 employee records and 35 original features. After data-quality checks and removal of three constant columns (`EmployeeCount`, `Over18` and `StandardHours`), the cleaned dataset contains 1,470 records and 32 features.

| Metric | Result |
|---|---:|
| Employees analysed | 1,470 |
| Employees who left | 237 |
| Employees who stayed | 1,233 |
| Overall attrition rate | 16.12% |
| Original features | 35 |
| Features after cleaning | 32 |

The dataset contained no missing values or duplicate records in the checks performed. `EmployeeNumber` was retained as an identifier. The raw dataset was preserved separately from the processed dataset.

### 3. Analytical Approach

The project followed a structured analytics workflow:

1. **Data understanding:** inspected dataset dimensions, data types, descriptive statistics, variable distributions and data quality.
2. **Data cleaning:** validated missing values, duplicates and identifiers; removed constant columns; exported the cleaned dataset.
3. **Exploratory data analysis:** compared attrition across departments, job roles, age groups, tenure, overtime, business travel, satisfaction, work-life balance and compensation.
4. **Statistical analysis:** used correlation analysis, Chi-square tests of independence, Cramér's V, Welch's independent-samples t-test, confidence intervals, Mann–Whitney U testing and Bonferroni correction.
5. **SQL analysis:** used MySQL queries for workforce summaries, group comparisons, employee segmentation, common table expressions, correlated subqueries and window functions.
6. **Dashboard development:** created a three-page Power BI dashboard to explore overall attrition, employee risk patterns and workforce characteristics.

### 4. Key Findings

- The overall attrition rate in the dataset is **16.12%**.
- Attrition is higher in the **Sales department (20.63%)** than the overall rate.
- **Sales Representatives have an attrition rate of 39.76%**, making this job role an important segment for further investigation.
- Employees working overtime have an attrition rate of **30.53%**, compared with **10.44%** among employees not working overtime.
- Employees aged **18–25 have an attrition rate of 35.77%**.
- Employees with **0–1 years at the company have an attrition rate of 34.88%**.
- Employees who travel frequently have an attrition rate of **24.91%**.
- Employees with a poor work-life balance rating (rating 1) have an attrition rate of **31.25%**.
- Average monthly income is **6,832.74** among employees who stayed and **4,787.09** among employees who left. The observed mean difference is **2,045.65**.

These are descriptive differences and statistical associations within this dataset. They should not be interpreted as proof that any one factor causes an employee to leave.

### 5. Statistical Evidence

Five categorical relationships were evaluated using Chi-square tests of independence. All five tests were statistically significant at the 0.05 level and remained significant after Bonferroni correction.

| Relationship tested | Chi-square statistic | Degrees of freedom | P-value | Cramér's V |
|---|---:|---:|---:|---:|
| Overtime vs attrition | 87.5643 | 1 | 8.1584 × 10⁻²¹ | 0.2441 |
| Job role vs attrition | 86.1903 | 8 | 2.7525 × 10⁻¹⁵ | 0.2421 |
| Business travel vs attrition | 24.1824 | 2 | 5.6086 × 10⁻⁶ | 0.1283 |
| Job satisfaction vs attrition | 17.5051 | 3 | 0.0005563 | 0.1091 |
| Work-life balance vs attrition | 16.3251 | 3 | 0.0009726 | 0.1054 |

The largest Cramér's V values among these tests were observed for overtime and job role. The effect sizes indicate that statistical significance should not be confused with a large association.

The monthly income comparison also showed a statistically significant difference. Welch's t-test produced a p-value of **4.4336 × 10⁻¹³**. The estimated mean difference (stayed minus left) was **2,045.65**, with a 95% confidence interval from **1,508.24 to 2,583.05**. The Mann–Whitney U test was also statistically significant (p = **2.9508 × 10⁻¹⁴**).

### 6. Business Implications and Recommended Areas for Investigation

The results suggest several areas HR teams could investigate further:

1. **Review overtime practices:** examine overtime frequency, workload distribution, staffing levels and recovery time, especially in teams with higher attrition.
2. **Investigate role-specific patterns:** review the working conditions, career paths, management practices and expectations associated with Sales Representative and other higher-attrition roles.
3. **Strengthen early-tenure support:** examine onboarding, role clarity, training, manager check-ins and early employee experience.
4. **Review travel demands:** assess travel frequency, scheduling, workload and employee support for frequently travelling employees.
5. **Explore compensation and satisfaction together:** investigate whether pay differences coincide with job level, role, tenure, performance or other factors rather than assuming compensation alone explains attrition.
6. **Monitor employee experience:** use satisfaction and work-life balance results as prompts for deeper investigation, not as standalone explanations.

These recommendations are proposed investigation areas, not proven interventions. Their effectiveness would need to be evaluated using additional organizational data and follow-up analysis.

### 7. Dashboard

The Power BI dashboard provides three views:

- **HR Attrition Overview:** headline workforce KPIs and overall attrition patterns.
- **Employee Risk Analysis:** attrition patterns across satisfaction, work-life balance, tenure, job level and related factors.
- **Workforce Insights:** additional comparisons across demographic and employment characteristics.

Interactive slicers allow users to filter the analysis by selected workforce dimensions.

### 8. Limitations

- The dataset is observational; associations do not establish causation.
- The dataset may not represent every organization, industry or workforce.
- Attrition is imbalanced: 237 employees left compared with 1,233 who stayed.
- Some employee segments may have small sample sizes, so their rates should be interpreted alongside employee counts.
- Statistical significance does not necessarily indicate a strong or practically important relationship.
- The analysis is limited to the variables and period represented in the supplied dataset.

### 9. Conclusion

This project demonstrates an end-to-end data analytics workflow using Python, statistical methods, MySQL and Power BI. The analysis identifies employee groups and workplace factors associated with higher attrition in the dataset, with overtime and job role showing comparatively stronger categorical associations among the five tested relationships.

The findings provide a structured starting point for HR investigation. They do not identify definitive causes of turnover, but they help prioritize where additional workforce analysis and targeted data collection may be valuable.
