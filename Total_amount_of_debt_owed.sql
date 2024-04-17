/* we are going to analyze international debt data collected by The World Bank.
The dataset contains information about the amount of debt (in USD) owed by developing
countries across several categories. We are going to find the answers to questions like: */

-- The amount of debt owed by the countries

select  
     round(SUM(debt)/1000000,2) as total_debt
from international_debt$


