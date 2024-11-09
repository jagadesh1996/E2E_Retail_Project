Transaction KPIs Analysis
Total Sales Value

Objective: Calculate the sum of sales values to determine overall revenue.
Query:
SELECT SUM(SALES_VALUE) AS total_sales_value
FROM TRANSACTION_RAW;

Objective: Find the average transaction amount to analyze customer spending behavior.
Query:
SELECT AVG(SALES_VALUE) AS avg_transaction_value
FROM TRANSACTION_RAW;

Objective: Measure the total quantity sold to assess product demand.
Query:
SELECT SUM(QUANTITY) AS total_quantity_sold
FROM TRANSACTION_RAW;

Objective: Analyze the effect of discounts on sales by calculating the total value of each discount type.
Query:
SELECT 
    SUM(RETAIL_DISC) AS total_retail_discount,
    SUM(COUPON_DISC) AS total_coupon_discount,
    SUM(COUPON_MATCH_DISC) AS total_coupon_match_discount
FROM TRANSACTION_RAW;
