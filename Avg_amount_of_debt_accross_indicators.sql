/* we are going to analyze international debt data collected by The World Bank.
The dataset contains information about the amount of debt (in USD) owed by developing
countries across several categories. We are going to find the answers to questions like: */ 

-- Average amount of debt accross indicators ?

select top 10
     indicator_code,
	 indicator_name,
	 AVG(debt) as avg_debt
from international_debt$
group by indicator_code,indicator_name
order by avg_debt desc