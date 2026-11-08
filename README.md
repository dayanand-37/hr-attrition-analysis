# HR Attrition Analysis
### Identifying the Key Factors Associated with Employee Turnover

## Project Overview

Employee attrition is an important challenge for organizations because employee turnover can affect workforce stability, productivity and recruitment costs.

This project analyzes employee workforce data to identify patterns and relationships associated with employee attrition.

Using Python, statistical analysis and MySQL, the project investigates employee characteristics, working conditions, compensation and job-related factors to generate meaningful HR insights.

The objective is to transform raw employee data into actionable business insights that can support better employee retention strategies.

**Current Status:** Python Analysis and SQL Analysis Completed | Power BI Dashboard Upcoming

---

## Business Objectives

The main objectives of this project are:

- Understand the overall employee attrition rate.
- Identify departments and job roles with higher attrition.
- Investigate the relationship between overtime and employee turnover.
- Examine how age, tenure and work experience relate to attrition.
- Analyze compensation and employee satisfaction patterns.
- Statistically evaluate selected relationships using hypothesis testing.
- Use SQL to perform structured business analysis.
- Develop data-driven recommendations for HR management.

---

## Dataset Information

**Dataset:** IBM HR Analytics Employee Attrition Dataset

The original dataset contains:

| Property | Value |
|---|---:|
| Total Employees | 1,470 |
| Original Features | 35 |
| Cleaned Features | 32 |
| Employees Who Left | 237 |
| Employees Who Stayed | 1,233 |
| Overall Attrition Rate | 16.12% |

### Data Quality and Cleaning

The dataset was examined for missing values, duplicate records, inconsistent identifiers and potential data-quality issues.

Key cleaning operations:

- Checked and validated missing values.
- Checked duplicate records.
- Verified employee identifier uniqueness.
- Identified and removed three constant columns:
  - EmployeeCount
  - Over18
  - StandardHours
- Retained EmployeeNumber as an identifier.
- Preserved the original raw dataset.
- Exported the cleaned dataset for further analysis.

**Final cleaned dataset:** 1,470 rows × 32 columns.

---

## Technologies and Tools

| Category | Tools |
|---|---|
| Programming | Python |
| Data Manipulation | Pandas, NumPy |
| Data Visualization | Matplotlib, Seaborn |
| Statistical Analysis | SciPy |
| Database | MySQL |
| SQL Environment | DBeaver |
| Development | VS Code, Jupyter Notebook |
| Version Control | Git, GitHub |
| Dashboard | Power BI (Planned) |

---

## Project Workflow

### 1. Data Understanding

Notebook: `01_data_understanding.ipynb`

- Loaded and examined the original dataset.
- Inspected dimensions, data types and statistical summaries.
- Investigated numerical and categorical variables.
- Checked missing values, duplicates and unique identifiers.
- Identified constant columns and performed data-quality checks.

### 2. Data Cleaning

Notebook: `02_data_cleaning.ipynb`

- Created a cleaned dataset.
- Removed unnecessary constant features.
- Preserved the original dataset.
- Validated the cleaned data.
- Exported the processed dataset to CSV.

### 3. Exploratory Data Analysis (EDA)

Notebook: `03_exploratory_analysis.ipynb`

Performed exploratory analysis to investigate employee attrition across important workforce characteristics.

Major analyses included:

- Overall attrition distribution.
- Department-wise attrition.
- Job-role-wise attrition.
- Age-group analysis.
- Overtime and attrition.
- Job satisfaction and work-life balance.
- Monthly income comparisons.
- Employee tenure and experience.
- Business travel.
- Distance from home.
- Job level and stock option level.
- Environment satisfaction.

Visualizations and descriptive observations were used to identify important patterns.

### 4. Statistical Analysis

Notebook: `04_statistical_analysis.ipynb`

Statistical methods were applied to evaluate whether selected relationships identified during EDA were supported by statistical evidence.

**Methods implemented:**

- Pearson correlation analysis.
- Chi-square tests of independence.
- Cramér's V effect size.
- Welch's independent samples t-test.
- Mann–Whitney U test.
- Confidence interval estimation.
- Cohen's d and Hedges' g effect sizes.
- Bonferroni correction for multiple hypothesis testing.

**Important statistical findings:**

- Overtime and attrition: Cramér's V = 0.2441.
- Job role and attrition: Cramér's V = 0.2421.
- Business travel and attrition: Cramér's V = 0.1283.
- Job satisfaction and attrition: Cramér's V = 0.1091.
- Work-life balance and attrition: Cramér's V = 0.1054.

All five selected categorical relationships remained statistically significant after Bonferroni correction.

The monthly income comparison showed:

| Metric | Stayed | Left |
|---|---:|---:|
| Average Monthly Income | 6,832.74 | 4,787.09 |
| Median Monthly Income | 5,204 | 3,202 |

The estimated mean difference was 2,045.65, with a 95% confidence interval of (1,508.24, 2,583.05).

Welch's t-test indicated a statistically significant difference between the two groups (p = 4.4336 × 10⁻¹³).

### 5. SQL Business Analysis

SQL scripts are maintained in the `sql/` directory and executed using MySQL through DBeaver.

**SQL work includes:**

- Database and employee table creation.
- Data exploration and validation.
- Overall attrition calculations.
- Department-wise and job-role-wise attrition.
- Age and tenure segmentation.
- Overtime and business travel analysis.
- Monthly income comparisons.
- CTEs and correlated subqueries.
- Window functions and employee ranking.
- Combined overtime and job satisfaction analysis.
- Employee segmentation using CASE statements.

Advanced SQL techniques were used to investigate employee groups and identify areas requiring further HR investigation.

---

## Key Business Findings

The Python and SQL analyses identified several important patterns.

| Finding | Result |
|---|---:|
| Overall Attrition Rate | 16.12% |
| Sales Department Attrition | 20.63% |
| Sales Representative Attrition | 39.76% |
| Attrition with Overtime | 30.53% |
| Attrition without Overtime | 10.44% |
| Attrition among Employees Aged 18–25 | 35.77% |
| Attrition among Employees with 0–1 Years Tenure | 34.88% |
| Frequent Business Travel Attrition | 24.91% |

### Additional Findings

- Employees who left had lower average monthly income than employees who stayed.
- Employees with poor work-life balance showed a higher attrition rate.
- Early-tenure employees working overtime recorded an attrition rate of 55.07%.
- Overtime and job role showed comparatively stronger categorical associations with attrition in the statistical analysis.

These observations identify potential areas for HR investigation rather than proving the causes of employee turnover.

---

## Project Structure

```text
hr-attrition-analysis/
│
├── data/
│   ├── raw/
│   ├── processed/
│   └── README.md
│
├── notebooks/
│   ├── 01_data_understanding.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_exploratory_analysis.ipynb
│   └── 04_statistical_analysis.ipynb
│
├── sql/
│   ├── 01_schema.sql
│   ├── 02_data_exploration.sql
│   ├── 03_attrition_analysis.sql
│   └── 04_business_insights.sql
│
├── .gitignore
├── README.md
└── requirements.txt
```

---

## How to Run the Project

### 1. Clone the Repository

```bash
git clone https://github.com/dayanand-37/hr-attrition-analysis.git
cd hr-attrition-analysis
```

### 2. Create a Virtual Environment

```bash
python -m venv .venv
```

Activate it:

Windows:

```bash
.venv\Scripts\activate
```

Linux:

```bash
source .venv/bin/activate
```

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

### 4. Run Python Notebooks

Open the `notebooks/` directory in VS Code or Jupyter Notebook.

Execute notebooks in numerical order, beginning with data understanding.

### 5. Run SQL Analysis

- Install and configure MySQL.
- Create the project database.
- Execute the SQL scripts in numerical order.
- Connect to the database using DBeaver.
- Review the query results.

The original and processed datasets are maintained separately.

---

## Limitations

- The dataset is observational and does not establish causal relationships.
- The dataset may not represent employee behaviour across all organizations.
- Employee attrition is imbalanced, with fewer employees leaving than staying.
- Several employee characteristics may be related to one another.
- Some employee groups have relatively small sample sizes.
- Statistical significance does not necessarily imply a strong practical relationship.

The findings should be interpreted as analytical evidence to guide further investigation, not definitive explanations of employee turnover.

---

## Future Work

- Build an interactive Power BI dashboard.
- Develop executive-level KPI cards and visualizations.
- Add department, job-role and employee-segment filters.
- Present key business findings through an executive summary.
- Develop practical HR retention recommendations.
- Finalize dashboard screenshots and portfolio documentation.

---

## Project Status

| Phase | Status |
|---|---|
| Data Understanding | Completed |
| Data Cleaning | Completed |
| Exploratory Data Analysis | Completed |
| Statistical Analysis | Completed |
| SQL Analysis | Completed |
| Power BI Dashboard | Upcoming |
| Final Business Report | Upcoming |

---

## Author

Dayanand

B.Sc. Mathematics Student | Aspiring Data Analyst

Interested in data analytics, statistical analysis, SQL and data-driven problem solving.
