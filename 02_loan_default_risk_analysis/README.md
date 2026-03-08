# Loan Default Risk Analysis
**SQL | Python | Machine Learning | Power BI**

---

## Project Overview

Loan default poses a significant risk to financial institutions, potentially leading to financial losses and operational inefficiencies. 
Understanding which borrower characteristics are associated with higher default rates allows lenders to make informed, data-driven lending decisions.

This project analyzes a loan dataset from Kaggle using SQL for data preparation, Python for exploratory data analysis and predictive modeling, and Power BI for interactive dashboard visualization. 
The goal is to identify high-risk borrowers, uncover patterns in default behavior, and provide actionable insights for credit risk management.

Financial institutions must evaluate the likelihood that borrowers will default on their loans. Poor credit risk assessment can lead to significant financial losses.

This analysis answers key questions:

- Which borrower characteristics are associated with higher default rates?

- How does credit history influence loan risk?

- Are certain income groups or geographic areas riskier?

- Can borrower financial characteristics help predict loan default probability?
---

## Dashboard Preview
![Loan Risk Dashboard](dashboard_preview.png)

The Power BI dashboard summarizes loan portfolio performance and highlights segments with elevated default risk.

---

## Skills Demonstrated

- Data cleaning and transformation
- SQL analytical querying
- Feature engineering
- Exploratory data analysis
- Statistical visualization
- Predictive modeling
- Business intelligence dashboard design
- Data storytelling for business insights

---

## Dataset

The dataset contains information on 611 loan applicants, including demographics, financial status, and loan details. Key variables include:
- Loan Amount
- Applicant Income
- Credit History
- Property Area
- Education Level
- Marital Status
- Loan Status (Approved / Defaulted)

---

## Data Preparation & Feature Engineering

Data was imported into SQLite for cleaning and preprocessing. Key steps included:

1. Corrected data types and handled missing values

2. Created engineered features to support analysis:

  - DefaultFlag –```CASE WHEN Loan_Status = 'N' THEN 1 ELSE 0 END```

  - Income Segment – Low (<3000), Medium (3000–6000), High (6000–10000), Very High (>10000)

3. Generated summary metrics for portfolio analysis and risk segmentation

---

## Exploratory Analysis (Python)

Python was used to explore borrower characteristics and their relationship with default risk:

- Loan amount distribution

- Default rate by credit history, income, property area, education, and marital status

- Correlation analysis between financial attributes and default

***Predictive Modeling***

A Logistic Regression model was trained to estimate default probability:

- 80/20 train-test split

- Feature selection based on borrower financial and demographic attributes

**Model Performance:**

|Metric|	Score|
|:---|:---|
|Accuracy|	77%|
|Precision (Default class)|	59%|
|Recall (Default class)|	63%|
|ROC-AUC	|0.71|

The model correctly classified 77% of loan outcomes, demonstrating moderate predictive capability for identifying loan default risk.

The ROC-AUC score of 0.71 indicates that the model performs better than random classification and has reasonable ability to distinguish between defaulting and non-defaulting borrowers.


## Key Insights

- **Credit history is the strongest predictor:**
Borrowers with poor credit history default at ~92%, versus 20–26% for good or unknown credit history.

- **Rural borrowers are higher risk:**
Default rates: Rural ~39%, Urban ~34%, Semiurban ~23%.

- **Education matters:**
Non-graduates default ~39% of the time, compared to 29% for graduates.

- **Income alone is a weak predictor:**
Default rates vary slightly (30–33%) across income bands.

- **Married borrowers default more frequently:**
Married: ~37%, Not married: ~28%, possibly due to higher financial obligations.

These insights highlight that credit history, geography, and borrower characteristics are critical for predicting loan default.

---

## Recommendations

Based on the analysis, financial institutions could:

- Enhance credit risk assessment by prioritizing credit history and borrower segmentation over income alone.

- Target high-risk segments such as rural borrowers or non-graduates with additional checks or stricter lending criteria.

- Monitor portfolio performance regularly using interactive dashboards to identify emerging risk trends.

- Deploy predictive models like Logistic Regression to flag high-risk loan applications, with potential for more advanced models (Random Forest, Gradient Boosting) to improve accuracy.

---

## Tools and Technologies

### Data Processing
- SQL (SQLite)
- Data cleaning
- Feature engineering
- Analytical queries

### Data Analysis
- Python
- pandas
- numpy

### Data Visualization
- matplotlib
- seaborn

### Machine Learning
- scikit-learn
- Logistic Regression

### Business Intelligence
- Power BI
- KPI dashboards
- Risk segmentation analysis

---

## Repository Structure
```
02_loan_default_risk_analysis/
│
├── 01_data/
│   ├── loan_data.csv
│   └── loan_clean_for_dashboard.csv
│
├── 02_sql/
│   ├── loan_risk.db
│   ├── 01_data_preparation.sql
│   └── 02_loan_risk_analysis.sql
│
├── 03_python/
│   └── loan_analysis.ipynb
│
└── 04_dashboard/
    ├── loan_default_dashboard.pbix
    └── loan_default_dashboard.png
```

---

## Conclusion

This analysis identifies key factors driving loan default risk and provides actionable insights for lenders. The combined SQL, Python, and Power BI workflow allows financial institutions to monitor risk, improve credit assessments, and make data-driven lending decisions.

---

## Author
**Chinonye Anams**
Data Analyst