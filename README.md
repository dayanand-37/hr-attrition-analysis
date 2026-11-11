# HR Attrition Analysis

### Identifying the Key Factors Associated with Employee Turnover

An end-to-end data analytics project exploring employee attrition
patterns using **Python, SQL, statistical analysis, and Power BI**.

------------------------------------------------------------------------

## Project Overview

Employee attrition can affect workforce stability, productivity,
recruitment costs, and organizational knowledge. This project analyzes
the IBM HR Analytics Employee Attrition dataset to understand how
attrition varies across employee demographics, job characteristics,
compensation, satisfaction, and work conditions.

The project follows an end-to-end analytics workflow: data
understanding, cleaning, exploratory analysis, statistical testing,
SQL-based analysis, and interactive dashboard development.

**Project status: Completed**

## Dashboard Preview

The Power BI report contains three pages designed for different levels
of analysis:

### 1. HR Attrition Overview

Provides a high-level view of workforce attrition through KPI cards and
comparisons across business travel, department, job role, monthly
income, overtime, and age group.

![HR Attrition
Overview](dashboards/dashboard_screenshots/01_hr_attrition_overview.png)

### 2. Employee Risk Analysis

Explores how attrition varies across employee tenure, job satisfaction,
years in current role, years since last promotion, stock option level,
work-life balance, and job level.

![Employee Risk
Analysis](dashboards/dashboard_screenshots/02_employee_risk_analysis.png)

### 3. Workforce Insights

Examines attrition across gender, environment satisfaction, distance
from home, marital status, total work experience, and education field.

![Workforce
Insights](dashboards/dashboard_screenshots/03_workforce_insights.png)

The report includes synchronized slicers and page navigation to support
interactive exploration. The Power BI file is available at:

`dashboards/hr_attrition_dashboard.pbix`

------------------------------------------------------------------------

## Business Objectives

-   Measure overall employee attrition.
-   Identify departments and job roles with comparatively higher
    attrition.
-   Examine the relationship between overtime and employee turnover.
-   Explore attrition patterns across age, tenure, and work experience.
-   Compare compensation and employee satisfaction between employees who
    left and stayed.
-   Apply statistical tests to assess selected relationships.
-   Use SQL to perform structured workforce analysis.
-   Communicate findings through an interactive Power BI dashboard.
-   Develop evidence-based areas for HR teams to investigate.

## Dataset Information

**Dataset:** IBM HR Analytics Employee Attrition & Performance\
**Original size:** 1,470 employee records and 35 columns.

  Metric                      Value
  ------------------------ --------
  Total Employees             1,470
  Original Features              35
  Cleaned Features               32
  Employees Who Left            237
  Employees Who Stayed        1,233
  Overall Attrition Rate     16.12%

### Data Cleaning

The original dataset was preserved, and a separate processed dataset was
created.

-   Checked missing values and duplicate records.
-   Verified the uniqueness of `EmployeeNumber`.
-   Identified and removed three constant columns: `EmployeeCount`,
    `Over18`, and `StandardHours`.
-   Retained `EmployeeNumber` as an identifier.
-   Exported the cleaned dataset for subsequent analysis.

**Cleaned dataset size:** 1,470 rows × 32 columns.

## Tools and Technologies

  Area                   Tools
  ---------------------- ---------------------------
  Programming            Python
  Data manipulation      Pandas, NumPy
  Data visualization     Matplotlib, Seaborn
  Statistical analysis   SciPy
  Database               MySQL
  SQL client             DBeaver
  BI and dashboarding    Power BI, DAX
  Development            VS Code, Jupyter Notebook
  Version control        Git, GitHub

------------------------------------------------------------------------

## Project Workflow

### 1. Data Understanding

**Notebook:** `notebooks/01_data_understanding.ipynb`

-   Inspected dataset dimensions, data types, and descriptive
    statistics.
-   Examined numerical and categorical variables.
-   Checked missing values, duplicate records, and identifier
    uniqueness.
-   Identified constant columns and reviewed data quality.

### 2. Data Cleaning

**Notebook:** `notebooks/02_data_cleaning.ipynb`

-   Removed unnecessary constant features.
-   Preserved the original raw dataset.
-   Validated the cleaned data.
-   Exported the processed dataset as a CSV file.

### 3. Exploratory Data Analysis

**Notebook:** `notebooks/03_exploratory_analysis.ipynb`

Explored attrition across:

-   Department and job role.
-   Age groups and employee tenure.
-   Overtime and business travel.
-   Job satisfaction, work-life balance, and environment satisfaction.
-   Monthly income.
-   Job level and stock option level.
-   Distance from home and years of experience.
-   Years in current role and years since last promotion.

The analysis used descriptive statistics and visualizations to compare
employee groups and identify patterns for further investigation.

### 4. Statistical Analysis

**Notebook:** `notebooks/04_statistical_analysis.ipynb`

The statistical analysis included:

-   Pearson correlation analysis.
-   Chi-square tests of independence.
-   Cramér's V effect size.
-   Welch's independent-samples t-test.
-   Mann--Whitney U test.
-   Confidence interval estimation.
-   Cohen's d and Hedges' g effect sizes.
-   Bonferroni correction for multiple hypothesis testing.

#### Selected categorical association results

  Relationship examined               Cramér's V
  --------------------------------- ------------
  Overtime and Attrition                  0.2441
  Job Role and Attrition                  0.2421
  Business Travel and Attrition           0.1283
  Job Satisfaction and Attrition          0.1091
  Work-Life Balance and Attrition         0.1054

The five selected categorical relationships remained statistically
significant after Bonferroni correction. The effect sizes indicate that
statistical significance should not be confused with a strong
association.

#### Monthly income comparison

  Metric                    Employees Who Stayed   Employees Who Left
  ----------------------- ---------------------- --------------------
  Mean Monthly Income                   6,832.74             4,787.09
  Median Monthly Income                    5,204                3,202

The estimated difference in mean monthly income was 2,045.65, with a 95%
confidence interval of 1,508.24 to 2,583.05. Welch's t-test reported a
p-value of 4.4336 × 10⁻¹³.

These results show a difference between the groups in this dataset; they
do not establish that income differences caused employees to leave.

### 5. SQL Analysis

**Directory:** `sql/`

SQL scripts were developed and executed using MySQL, with DBeaver as the
database client.

The analysis includes:

-   Database and table creation.
-   Data exploration and validation.
-   Overall attrition calculations.
-   Department-wise and job-role-wise attrition.
-   Age and tenure segmentation.
-   Overtime and business travel analysis.
-   Monthly income comparisons.
-   CTEs and correlated subqueries.
-   Window functions and employee ranking.
-   Combined overtime and job satisfaction analysis.
-   Employee segmentation using `CASE` statements.

### 6. Power BI Dashboard

**File:** `dashboards/hr_attrition_dashboard.pbix`

The interactive report has three pages:

  -----------------------------------------------------------------------
  Page                                Purpose
  ----------------------------------- -----------------------------------
  HR Attrition Overview               Workforce KPIs and high-level
                                      attrition comparisons

  Employee Risk Analysis              Attrition patterns across tenure,
                                      satisfaction, job level, and
                                      related factors

  Workforce Insights                  Attrition patterns across
                                      demographic and workforce
                                      characteristics
  -----------------------------------------------------------------------

Dashboard features include KPI cards, percentage-based attrition
comparisons, synchronized slicers, and page navigation.

------------------------------------------------------------------------

## Key Findings

The exploratory analysis identified the following patterns:

  Finding                                 Attrition Rate
  ------------------------------------- ----------------
  Overall workforce                               16.12%
  Sales department                                20.63%
  Sales Representatives                           39.76%
  Employees working overtime                      30.53%
  Employees not working overtime                  10.44%
  Employees aged 18--25                           35.77%
  Employees with 0--1 years of tenure             34.88%
  Frequent business travellers                    24.91%

Additional observations:

-   Employees who left had lower mean and median monthly income than
    employees who stayed.
-   The poor work-life balance category showed a higher attrition rate.
-   Employees with 0--1 years of tenure who worked overtime had an
    attrition rate of 55.07%.
-   Overtime and job role had the largest Cramér's V values among the
    five categorical relationships tested.

These are associations and descriptive patterns in the dataset, not
proof of causation. Rates for small employee groups should be
interpreted alongside their group sizes.

## Business Recommendations

The analysis suggests several areas HR teams could investigate further:

1.  **Review overtime practices:** Examine workload, scheduling, and
    support for employees regularly working overtime.
2.  **Investigate early-tenure attrition:** Review onboarding, role
    expectations, manager support, and early employee experience.
3.  **Examine high-attrition job roles:** Conduct role-specific analysis
    to understand workload, career progression, and retention
    challenges.
4.  **Review employee experience:** Monitor job satisfaction and
    work-life balance alongside attrition.
5.  **Use compensation analysis carefully:** Investigate pay differences
    by role, level, and tenure rather than assuming income alone
    explains turnover.

These recommendations are starting points for further investigation, not
interventions proven to reduce attrition by this analysis.

## Repository Structure

``` text
hr-attrition-analysis/
├── dashboards/
│   ├── dashboard_screenshots/
│   │   ├── 01_hr_attrition_overview.png
│   │   ├── 02_employee_risk_analysis.png
│   │   └── 03_workforce_insights.png
│   └── hr_attrition_dashboard.pbix
├── data/
│   ├── raw/
│   ├── processed/
│   └── README.md
├── notebooks/
│   ├── 01_data_understanding.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_exploratory_analysis.ipynb
│   └── 04_statistical_analysis.ipynb
├── reports/
│   ├── executive_summary.md
│   └── key_findings.md
├── sql/
│   ├── 01_schema.sql
│   ├── 02_data_exploration.sql
│   ├── 03_attrition_analysis.sql
│   └── 04_business_insights.sql
├── .gitignore
├── README.md
└── requirements.txt
```

*The tree above describes the intended project layout. Keep only files
and folders that are present in your repository, and update names if
your actual filenames differ.*

## How to Run the Project

### 1. Clone the repository

``` bash
git clone https://github.com/dayanand-37/hr-attrition-analysis.git
cd hr-attrition-analysis
```

### 2. Create and activate a virtual environment

``` bash
python -m venv .venv
```

**Windows:**

``` bash
.venv\Scripts\activate
```

**Linux/macOS:**

``` bash
source .venv/bin/activate
```

### 3. Install Python dependencies

``` bash
pip install -r requirements.txt
```

### 4. Run the notebooks

Open the `notebooks/` directory in Jupyter Notebook or VS Code and
execute the notebooks in numerical order.

### 5. Run the SQL scripts

-   Install and configure MySQL.
-   Create the project database and table using `sql/01_schema.sql`.
-   Load the cleaned CSV data into the table using your database import
    workflow.
-   Execute the remaining SQL scripts in numerical order.
-   Review query results in DBeaver.

### 6. Open the Power BI report

Open `dashboards/hr_attrition_dashboard.pbix` in Power BI Desktop. If
the report prompts for a data source, update the source path to the
cleaned dataset in `data/processed/`.

------------------------------------------------------------------------

## Limitations

-   The dataset is observational and cannot establish causal
    relationships.
-   The dataset may not represent employee behaviour in every
    organization.
-   Attrition is imbalanced: fewer employees left than stayed.
-   Some employee groups may have small sample sizes, making their rates
    less stable.
-   Employee characteristics may be related to one another.
-   Statistical significance does not necessarily indicate a large or
    practically important effect.
-   The analysis is based on the fields and time period available in the
    supplied dataset.

The results should be treated as evidence for further investigation, not
definitive explanations of employee turnover.

## Project Status

  Phase                       Status
  --------------------------- -----------
  Data Understanding          Completed
  Data Cleaning               Completed
  Exploratory Data Analysis   Completed
  Statistical Analysis        Completed
  SQL Analysis                Completed
  Power BI Dashboard          Completed
  Project Documentation       Completed

## Author

**Dayanand**\
B.Sc. Mathematics Student \| Aspiring Data Analyst

Interested in data analytics, statistical analysis, SQL, business
intelligence, and data-driven problem solving.

------------------------------------------------------------------------

## Acknowledgements

Dataset: IBM HR Analytics Employee Attrition & Performance dataset,
commonly distributed through IBM HR Analytics sample-data repositories.
Please retain the dataset's original source and license/usage
attribution in `data/README.md`.
