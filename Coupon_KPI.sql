Coupon KPIs Analysis
This section focuses on evaluating coupon distribution and redemption effectiveness. By analyzing coupon redemption rates and usage by campaign,
we can gain insights into customer response to discounts and identify effective campaigns.

KPIs and Queries
Coupon Redemption Rate

Objective: Calculate the percentage of coupons redeemed relative to the total coupons distributed.
Query:
WITH total_coupons AS (
  SELECT COUNT(DISTINCT COUPON_UPC) AS total_coupons_distributed
  FROM COUPON_RAW
),
redeemed_coupons AS (
  SELECT COUNT(DISTINCT COUPON_UPC) AS total_coupons_redeemed
  FROM COUPON_REDEMPT_RAW
)
SELECT 
  total_coupons.total_coupons_distributed,
  redeemed_coupons.total_coupons_redeemed,
  (redeemed_coupons.total_coupons_redeemed * 100.0 / total_coupons.total_coupons_distributed) AS coupon_redemption_rate_percentage
FROM total_coupons, redeemed_coupons;

Objective: Measure the number of coupon redemptions associated with each campaign to analyze campaign performance.
Query:

SELECT CAMPAIGN, COUNT(DISTINCT COUPON_UPC) AS coupons_redeemed
FROM COUPON_REDEMPT_RAW
GROUP BY CAMPAIGN;
Result: Displays each campaign along with the count of redeemed coupons, helping assess campaign effectiveness.
