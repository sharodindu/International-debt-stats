/* we are going to analyze international debt data collected by The World Bank.
The dataset contains information about the amount of debt (in USD) owed by developing
countries across several categories. We are going to find the answers to questions like: */ 

-- Country with highest debt ?

select top 1
       country_name,
	   SUM(debt) as total_debt
from international_debt$
group by country_name
order by total_debt desc
 