-- =========================================
-- Loan Default Risk Analysis
-- Business analytics queries
-- =========================================

-- Overall default rate
SELECT
    COUNT(*) AS total_loans,
    SUM(default_flag) AS total_defaults,
    ROUND(AVG(default_flag) * 100, 2) AS default_rate_percent
FROM loans_clean;

-- Portfolio KPIs
SELECT
    COUNT(*) AS total_loans,
    SUM(default_flag) AS total_defaults,
    ROUND(AVG(default_flag) * 100, 2) AS default_rate_percent,
    ROUND(AVG(LoanAmount), 0) AS avg_loan_amount,
    ROUND(AVG(ApplicantIncome), 0) AS avg_income
FROM loans_clean;

-- Default risk by income group
SELECT
    income_group,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS total_defaults,
    ROUND(AVG(default_flag) * 100, 2) AS default_rate_percent,
    ROUND(AVG(LoanAmount), 0) AS avg_loan_amount
FROM loans_clean
GROUP BY income_group
ORDER BY default_rate_percent DESC;

-- Default risk by property area
SELECT
    Property_Area,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS total_defaults,
    ROUND(AVG(default_flag) * 100, 2) AS default_rate_percent
FROM loans_clean
GROUP BY Property_Area
ORDER BY default_rate_percent DESC;

-- Loan distribution by income group
SELECT
    income_group,
    COUNT(*) AS total_loans,
    ROUND(AVG(LoanAmount), 0) AS avg_loan_amount,
    MIN(LoanAmount) AS min_loan,
    MAX(LoanAmount) AS max_loan
FROM loans_clean
GROUP BY income_group
ORDER BY avg_loan_amount DESC;

-- Default risk by credit history
SELECT
    CASE 
        WHEN Credit_History IS NULL THEN 'Unknown'
        WHEN Credit_History = 1 THEN 'Good'
        WHEN Credit_History = 0 THEN 'Bad'
    END AS credit_history,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS total_defaults,
    ROUND(AVG(default_flag) * 100, 2) AS default_rate_percent
FROM loans_clean
GROUP BY credit_history
ORDER BY default_rate_percent DESC;

-- Default rate by education
SELECT
    Education,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS defaults,
    ROUND(AVG(default_flag) * 100, 2) AS default_rate_percent
FROM loans_clean
GROUP BY Education
ORDER BY default_rate_percent DESC;

-- Default rate by employment status
SELECT
	CASE
        WHEN Self_Employed IS NULL THEN 'Unknown'
        ELSE Self_Employed
    END AS employment_status,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS defaults,
    ROUND(AVG(default_flag) * 100, 2) AS default_rate_percent
FROM loans_clean
GROUP BY employment_status
ORDER BY default_rate_percent DESC;

-- Loan status distribution
SELECT
    Loan_Status,
    COUNT(*) AS total_loans
FROM loans_clean
GROUP BY Loan_Status;

