Product KPIs Analysis
These KPIs help us evaluate which products and brands perform best, the distribution of sales across manufacturers, and the revenue contribution by departments.

KPIs and Queries
Total Sales Value per Product

Objective: Calculate the total sales value for each product to identify top sellers.
Query:
SELECT PRODUCT_ID, SUM(SALES_VALUE) AS total_sales_value
FROM TRANSACTION_RAW
GROUP BY PRODUCT_ID
ORDER BY total_sales_value DESC;

Objective: Analyze the number of products associated with each manufacturer.
Query:
  
SELECT MANUFACTURER, COUNT(PRODUCT_ID) AS product_count
FROM PRODUCT_RAW
GROUP BY MANUFACTURER
ORDER BY product_count DESC;

Objective: Measure the sales value by department to understand revenue contribution.
Query:
SELECT DEPARTMENT, SUM(SALES_VALUE) AS department_sales
FROM TRANSACTION_RAW T
JOIN PRODUCT_RAW P ON T.PRODUCT_ID = P.PRODUCT_ID
GROUP BY DEPARTMENT
ORDER BY department_sales DESC;

Objective: Calculate sales value for each brand to identify top-selling brands.
Query:
SELECT BRAND, SUM(SALES_VALUE) AS brand_sales
FROM TRANSACTION_RAW T
JOIN PRODUCT_RAW P ON T.PRODUCT_ID = P.PRODUCT_ID
GROUP BY BRAND
ORDER BY brand_sales DESC;
