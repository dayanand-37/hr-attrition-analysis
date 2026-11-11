# Key Findings
## HR Attrition Analysis — Evidence from Python, SQL and Statistical Analysis

### 1. Overall Workforce Attrition

The dataset contains 1,470 employee records. Of these, 237 employees left and 1,233 stayed.

| Metric | Employees | Share |
|---|---:|---:|
| Stayed | 1,233 | 83.88% |
| Left | 237 | 16.12% |
| Total | 1,470 | 100.00% |

**Finding:** The overall attrition rate is **16.12%**. This is the baseline against which the segment-level rates below are compared.

### 2. Department and Job Role

| Segment | Attrition rate |
|---|---:|
| Sales department | 20.63% |
| Sales Representatives | 39.76% |

**Finding:** Attrition in Sales is above the overall dataset rate. Sales Representatives show a notably higher rate than the overall workforce.

**What this suggests:** HR could investigate role-specific workload, targets, career progression, management practices and compensation. The analysis does not establish which, if any, of these factors explains the difference.

### 3. Overtime

| Overtime status | Attrition rate |
|---|---:|
| Yes | 30.53% |
| No | 10.44% |

**Finding:** The attrition rate among employees working overtime is substantially higher than among employees not working overtime.

The Chi-square test found an association between overtime status and attrition:

- Chi-square statistic: **87.5643**
- Degrees of freedom: **1**
- P-value: **8.1584 × 10⁻²¹**
- Cramér's V: **0.2441**

**Interpretation:** The result is statistically significant, and Cramér's V indicates a small-to-moderate association. This does not prove that overtime causes attrition. Workload, role, seniority and other employee characteristics may also be relevant.

### 4. Age Group

| Segment | Attrition rate |
|---|---:|
| Employees aged 18–25 | 35.77% |

**Finding:** Employees in the 18–25 age group have a higher attrition rate than the overall dataset.

**What this suggests:** Review early-career expectations, onboarding, training, role fit and career development opportunities. Segment size should be considered when interpreting the rate.

### 5. Tenure at the Company

| Segment | Attrition rate |
|---|---:|
| Employees with 0–1 years at the company | 34.88% |

**Finding:** Attrition is concentrated among employees with very short company tenure compared with the overall rate.

**What this suggests:** Examine recruitment expectations, onboarding quality, manager support, training and the employee experience during the first year.

### 6. Business Travel

| Business travel frequency | Employees who left | Total employees | Attrition rate |
|---|---:|---:|---:|
| Non-Travel | 12 | 150 | 8.00% |
| Travel_Frequently | 69 | 277 | 24.91% |
| Travel_Rarely | 156 | 1,043 | 14.96% |

**Finding:** Employees who travel frequently have the highest attrition rate among the three business-travel categories.

The Chi-square test found an association between business travel and attrition:

- Chi-square statistic: **24.1824**
- Degrees of freedom: **2**
- P-value: **5.6086 × 10⁻⁶**
- Cramér's V: **0.1283**

**Interpretation:** The association is statistically significant, but its effect size is relatively small. Travel frequency may be related to other job and employee characteristics.

### 7. Job Satisfaction

| Job satisfaction rating | Employees who left | Total employees | Attrition rate |
|---|---:|---:|---:|
| 1 | 66 | 289 | 22.84% |
| 2 | 46 | 280 | 16.43% |
| 3 | 73 | 442 | 16.52% |
| 4 | 52 | 459 | 11.33% |

**Finding:** The lowest job satisfaction category (rating 1) has the highest attrition rate, while rating 4 has the lowest rate in this comparison.

The Chi-square test results were:

- Chi-square statistic: **17.5051**
- Degrees of freedom: **3**
- P-value: **0.0005563**
- Cramér's V: **0.1091**

**Interpretation:** Job satisfaction and attrition are statistically associated in this dataset. The effect size is small, so satisfaction should be considered alongside other factors.

### 8. Work-Life Balance

| Work-life balance rating | Employees who left | Total employees | Attrition rate |
|---|---:|---:|---:|
| 1 | 25 | 80 | 31.25% |
| 2 | 58 | 344 | 16.86% |
| 3 | 127 | 893 | 14.22% |
| 4 | 27 | 153 | 17.65% |

**Finding:** Rating 1 has the highest attrition rate (31.25%). The rate does not decline consistently across every rating, so the pattern should not be described as a simple linear relationship.

The Chi-square test results were:

- Chi-square statistic: **16.3251**
- Degrees of freedom: **3**
- P-value: **0.0009726**
- Cramér's V: **0.1054**

**Interpretation:** Work-life balance and attrition are statistically associated, but the effect size is small. The lowest-rating group contains 80 employees, so its rate should be considered together with its sample size.

### 9. Monthly Income

| Metric | Stayed | Left |
|---|---:|---:|
| Employees | 1,233 | 237 |
| Mean monthly income | 6,832.74 | 4,787.09 |
| Median monthly income | 5,204 | 3,202 |

**Finding:** Employees who left had lower mean and median monthly income than employees who stayed.

Welch's independent-samples t-test:

- T-statistic: **7.4826**
- Degrees of freedom: **412.7407**
- P-value: **4.4336 × 10⁻¹³**
- Mean difference (stayed minus left): **2,045.65**
- 95% confidence interval: **1,508.24 to 2,583.05**
- Cohen's d: **0.4400**
- Hedges' g: **0.4398**

The Mann–Whitney U test was also statistically significant (U = **191,600.5**, p = **2.9508 × 10⁻¹⁴**).

**Interpretation:** The two attrition groups differ in monthly income in this dataset. The result does not show that lower income alone caused employees to leave. Income may also vary by job role, job level, tenure and other factors.

### 10. Multiple Testing: Bonferroni Correction

Five Chi-square tests were included in the multiple-testing correction: overtime, job role, business travel, job satisfaction and work-life balance.

- Original significance level: **0.05**
- Number of tests: **5**
- Bonferroni-adjusted significance level: **0.01**

All five tests remained statistically significant after correction.

| Analysis | Original p-value | Bonferroni-adjusted p-value | Significant after correction? |
|---|---:|---:|---|
| Overtime | 8.1584 × 10⁻²¹ | 4.0792 × 10⁻²⁰ | Yes |
| Job role | 2.7525 × 10⁻¹⁵ | 1.3762 × 10⁻¹⁴ | Yes |
| Business travel | 5.6086 × 10⁻⁶ | 2.8043 × 10⁻⁵ | Yes |
| Job satisfaction | 0.0005563 | 0.0027815 | Yes |
| Work-life balance | 0.0009726 | 0.0048628 | Yes |

**Interpretation:** The five relationships remain statistically significant under the chosen Bonferroni correction. This does not mean that all five relationships are equally strong; Cramér's V provides additional information about association strength.

### 11. Comparative Statistical Summary

| Categorical factor | Cramér's V | Relative association in these tests |
|---|---:|---|
| Overtime | 0.2441 | Largest |
| Job role | 0.2421 | Second largest |
| Business travel | 0.1283 | Smaller |
| Job satisfaction | 0.1091 | Smaller |
| Work-life balance | 0.1054 | Smallest of the five |

The comparison is limited to these five tested categorical relationships. It should not be interpreted as a complete ranking of every possible attrition driver in the dataset.

### 12. Recommended Areas for HR Investigation

Based on the observed patterns, the following areas merit further investigation:

1. Review overtime distribution, staffing and workload in teams with higher attrition.
2. Examine the employee experience, targets, support and progression opportunities in Sales Representative roles.
3. Review onboarding, training, role clarity and manager support for employees in their first year.
4. Examine the demands and support arrangements for employees who travel frequently.
5. Investigate compensation differences in the context of job role, job level and tenure.
6. Monitor satisfaction and work-life balance alongside other workforce indicators.

These are investigation priorities, not guaranteed solutions. Any intervention should be evaluated with additional data.

### 13. Interpretation Notes and Limitations

- Attrition rates describe the proportion of employees who left within each group; they are not counts of employees who left.
- Always consider the group size alongside an attrition rate. Small groups can produce unstable or extreme percentages.
- Chi-square tests identify evidence of association, not causation.
- P-values measure compatibility with the null hypothesis under the test assumptions; they do not measure the size or business importance of an effect.
- Cramér's V describes association strength and should be interpreted separately from statistical significance.
- The dataset is observational and may not generalize to all organizations.
- The findings are limited to the available variables and records.

### Overall Takeaway

In this dataset, higher attrition rates are observed among employees working overtime, Sales Representatives, younger employees, employees with short company tenure and employees who travel frequently. Statistical testing supports associations between attrition and overtime, job role, business travel, job satisfaction and work-life balance. Monthly income also differs significantly between employees who stayed and those who left.

The strongest categorical associations among the five tested factors were overtime and job role. These findings can help prioritize further HR investigation, but they do not establish causal explanations for employee turnover.
