Campaign KPIs Analysis:
In this section, we evaluate the effectiveness and reach of various marketing campaigns using Snowflake SQL.
Key metrics include the total number of campaigns, campaign duration, and the reach of each campaign in terms of associated households.

KPIs and Queries
Number of Campaigns

Objective: Determine the total number of unique campaigns conducted.
Query:
SELECT COUNT(DISTINCT CAMPAIGN) AS total_campaigns
FROM CAMPAIGN_DESC_RAW;


Objective: Calculate the duration of each campaign by subtracting the START_DAY from the END_DAY.
Query:
SELECT CAMPAIGN, DESCRIPTION, START_DAY, END_DAY, 
  (END_DAY - START_DAY) AS campaign_duration_days
FROM CAMPAIGN_DESC_RAW;


Objective: Measure the number of households associated with each campaign to assess its reach.
Query:
SELECT CAMPAIGN, COUNT(DISTINCT household_key) AS households_reached
FROM CAMPAIGN_RAW
GROUP BY CAMPAIGN;

Resume Bullet Point Example
Analyzed Campaign Effectiveness: Utilized Snowflake SQL to assess campaign performance by calculating reach and duration metrics, enabling targeted improvements for future marketing campaigns.
