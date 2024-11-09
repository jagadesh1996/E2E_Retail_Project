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
Result: Returns the count of unique households from the demographic_RAW table.
Household Composition Distribution

2.Objective: Understand the distribution of household compositions.
Query:
SELECT HH_COMP_DESC, COUNT(*) AS composition_count, 
  ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM demographic_RAW)), 2) AS composition_percentage
FROM demographic_RAW
GROUP BY HH_COMP_DESC;
Result: Provides the count and percentage of each household composition type.
Age Distribution

3.Objective: Calculate the percentage or count of customers in different age groups.
Query:
SELECT AGE_DESC, COUNT(*) AS age_group_count,
  ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM demographic_RAW)), 2) AS age_group_percentage
FROM demographic_RAW
GROUP BY AGE_DESC;
Result: Shows the count and percentage distribution for each age group.
Marital Status Distribution

4.Objective: Analyze the proportion of households in different marital status categories.
Query:
SELECT MARITAL_STATUS_CODE, COUNT(*) AS marital_status_count,
  ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM demographic_RAW)), 2) AS marital_status_percentage
FROM demographic_RAW
GROUP BY MARITAL_STATUS_CODE;
Result: Counts and percentages for each marital status category.
Income Distribution

5.Objective: Identify the distribution of households across income levels.
Query:
SELECT INCOME_DESC, COUNT(*) AS income_count,
  ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM demographic_RAW)), 2) AS income_percentage
FROM demographic_RAW
GROUP BY INCOME_DESC;
Result: Shows the count and percentage of households by income level.
Homeownership Distribution

6.Objective: Calculate the percentage and count of households by homeownership status.
Query:
SELECT HOMEOWNER_DESC, COUNT(*) AS homeownership_count,
  ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM demographic_RAW)), 2) AS homeownership_percentage
FROM demographic_RAW
GROUP BY HOMEOWNER_DESC;
Result: Displays counts and percentages for homeownership categories.

Resume Bullet Point Example:
Performed Customer Demographic Analysis: Developed and executed Snowflake SQL queries to analyze customer demographics. 
Delivered insights into household composition, age distribution, marital status, income, and homeownership, helping to inform targeted marketing and enhance customer segmentation.
