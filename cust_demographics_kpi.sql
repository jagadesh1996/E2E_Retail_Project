Customer Demographics KPIs Analysis:
This analysis focuses on understanding the demographic composition of customers within a retail environment. 
Using Snowflake SQL, several Key Performance Indicators (KPIs) were created to analyze unique household counts, household composition, age distribution, marital status, income distribution
and homeownership status.

KPIs and Queries
Count of Unique Households

1.Objective: Measure the total number of unique households.
Query:
SELECT COUNT(DISTINCT household_key) AS unique_households
FROM demographic_RAW;

2.Objective: Understand the distribution of household compositions.
Query:
SELECT HH_COMP_DESC, COUNT(*) AS composition_count, 
  ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM demographic_RAW)), 2) AS composition_percentage
FROM demographic_RAW
GROUP BY HH_COMP_DESC;

3.Objective: Calculate the percentage or count of customers in different age groups.
Query:
SELECT AGE_DESC, COUNT(*) AS age_group_count,
  ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM demographic_RAW)), 2) AS age_group_percentage
FROM demographic_RAW
GROUP BY AGE_DESC;

4.Objective: Analyze the proportion of households in different marital status categories.
Query:
SELECT MARITAL_STATUS_CODE, COUNT(*) AS marital_status_count,
  ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM demographic_RAW)), 2) AS marital_status_percentage
FROM demographic_RAW
GROUP BY MARITAL_STATUS_CODE;


5.Objective: Identify the distribution of households across income levels.
Query:
SELECT INCOME_DESC, COUNT(*) AS income_count,
  ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM demographic_RAW)), 2) AS income_percentage
FROM demographic_RAW
GROUP BY INCOME_DESC;

6.Objective: Calculate the percentage and count of households by homeownership status.
Query:
SELECT HOMEOWNER_DESC, COUNT(*) AS homeownership_count,
  ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM demographic_RAW)), 2) AS homeownership_percentage
FROM demographic_RAW
GROUP BY HOMEOWNER_DESC;
