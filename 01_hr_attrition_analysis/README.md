# HR Attrition Analysis Dashboard (Excel)

## Dashboard Preview

![HR Attrition Dashboard](https://github.com/NonyeAnams/Business_Data_Analytics_Portfolio/blob/main/01_hr_attrition_analysis/05_images/hr_attrition_dashboard.png)



## Overview

Employee attrition is a critical challenge for organizations because high turnover leads to increased recruitment costs, loss of institutional knowledge, and reduced productivity. Understanding the factors that drive employee departures helps HR teams design effective retention strategies.

This project analyzes employee data from the **IBM HR Analytics dataset to identify patterns associated with employee attrition and build an interactive dashboard that enables HR teams to explore workforce trends and potential drivers of employee turnover.

This project aims to answer key questions such as:

- What is the overall employee attrition rate?

- Which departments experience the highest turnover?

- How does overtime influence employee attrition?

- Do employee characteristics such as tenure, income, or job satisfaction correlate with attrition?


The analysis was conducted using Microsoft Excel, focusing on data cleaning, feature engineering, pivot analysis, and dashboard design.



## Key Insights

Several patterns emerged from the analysis:

- Employees working overtime show significantly higher attrition rates.

- Most employee departures occur among employees with shorter tenure.

- Department-specific turnover reveals notable differences:

  - Sales has an attrition rate of 21% (out of 446 employees).

  - HR has an attrition rate of 19% (out of 63 employees).

  - R&D has an attrition rate of 14% (out of 961 employees).

- Lower job satisfaction correlates strongly with higher attrition.

These findings highlight workload, employee engagement, and early-career retention as important factors influencing employee turnover.



## Recommendations

Based on the analysis, organizations may consider the following actions:

- Review overtime policies to reduce excessive workload and potential burnout.

- Implement targeted retention programs for employees in their first few years at the company.

- Strengthen employee engagement initiatives in departments experiencing higher turnover, such as Sales and HR, to boost morale and satisfaction.

- Monitor employee satisfaction metrics as part of ongoing workforce management.


## Tools & Skills Demonstrated

- Data Cleaning

- Feature Engineering

- Pivot Table Analysis

- Dashboard Design

- Data Visualization

- Business Insight Development

Tool used:

- Microsoft Excel



## Dataset

The dataset used in this project is the IBM HR Attrition dataset, which contains information about employee demographics, job roles, compensation, job satisfaction, and employment history.

Key variables include:
- Age
- Department
- Job Role
- Monthly Income
- Overtime
- Job Satisfaction
- Years at Company
- Distance from Home
- Attrition



## Data Preparation

The dataset was cleaned and prepared in Excel before analysis.

Steps performed:

1. Removed unused columns (EmployeeCount, Over18, StandardHours)

2. Formatted numeric fields for consistency

3. Converted the dataset into an Excel table for easier analysis

4. Created additional analytical variables to support business insights


**Engineered Features**

Several derived columns were created to support deeper analysis:

- Age Group – categorizes employees by age range

- Income Band – groups employees by salary levels

- Tenure Group – groups employees by years at the company

- Education Level – descriptive labels created using the CHOOSE() function

- Job Satisfaction Level

- Environment Satisfaction Level

- Work Life Balance Level

- AttritionFlag – numeric indicator for attrition used in pivot calculations



## Analysis

Pivot tables were created to analyze attrition patterns across multiple dimensions.

**Dashboard Analysis**

The dashboard presents key workforce metrics and visualizations including:

- Workforce distribution

- Attrition rate

- Attrition by department

- Attrition by age group

- Attrition by overtime

**Exploratory Analysis**

Additional pivot tables were created to examine deeper patterns:

- Attrition by Job Satisfaction

- Attrition by Tenure Group

- Attrition by Income Band

These analyses help identify employee segments with elevated attrition risk.



## Project Structure
```
01_hr_attrition_analysis
│
├── data
│   └── hr_attrition.csv
│
├── excel
│   └── hr_attrition_analysis.xlsx
│
├── images
│   └── dashboard.png
│
└── README.md
```


## Conclusion

This analysis highlights key drivers of employee attrition and provides insights that can help organizations improve employee retention and workforce management strategies.



## Author
**Chinonye Anams**          
Data Analyst | Turning complex data into actionable business insights
