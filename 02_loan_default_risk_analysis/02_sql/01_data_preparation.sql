-- =========================================
-- Loan Data Preparation
-- Cleaning and feature engineering
-- =========================================

-- Inspect raw table
PRAGMA table_info(loans);

-- Create cleaned table with correct data types
CREATE TABLE loans_clean AS
SELECT
    Loan_ID,
    Gender,
    Married,
    Dependents,
    Education,
    Self_Employed,
    CAST(ApplicantIncome AS INTEGER) AS ApplicantIncome,
    CAST(CoapplicantIncome AS INTEGER) AS CoapplicantIncome,
    CAST(LoanAmount AS INTEGER) AS LoanAmount,
    CAST(Loan_Amount_Term AS INTEGER) AS Loan_Amount_Term,
    CAST(Credit_History AS INTEGER) AS Credit_History,
    Property_Area,
    Loan_Status
FROM loans;

-- Inspect cleaned table
PRAGMA table_info(loans_clean);

-- Preview data
SELECT *
FROM loans_clean
LIMIT 10;

-- Record count
SELECT COUNT(*) AS total_records
FROM loans_clean;

-- Check missing loan amounts
SELECT COUNT(*) AS missing_loan_amounts
FROM loans_clean
WHERE LoanAmount IS NULL;

-- Rectify NULL loan amounts
UPDATE loans_clean
SET LoanAmount = (
  SELECT LoanAmount FROM loans_clean
  WHERE LoanAmount IS NOT NULL
  ORDER BY LoanAmount
  LIMIT 1 OFFSET (SELECT COUNT(*)/2 FROM loans_clean WHERE LoanAmount IS NOT NULL)
)
WHERE LoanAmount IS NULL;


-- =========================================
-- Feature Engineering
-- =========================================

-- Create default flag
ALTER TABLE loans_clean
ADD COLUMN default_flag INTEGER;

UPDATE loans_clean
SET default_flag =
CASE
    WHEN Loan_Status = 'N' THEN 1
    ELSE 0
END;

-- Create income group segmentation
ALTER TABLE loans_clean
ADD COLUMN income_group TEXT;

UPDATE loans_clean
SET income_group =
CASE
    WHEN ApplicantIncome < 3000 THEN 'Low'
    WHEN ApplicantIncome BETWEEN 3000 AND 6000 THEN 'Medium'
    WHEN ApplicantIncome BETWEEN 6001 AND 10000 THEN 'High'
    ELSE 'Very High'
END;