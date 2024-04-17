/* we are going to analyze international debt data collected by The World Bank.
The dataset contains information about the amount of debt (in USD) owed by developing
countries across several categories. We are going to find the answers to questions like: */ 

-- Maximum debt issued according to country ?

select Top 10
      country_name,
	  indicator_code,
	  SUM(debt) as maximum_debt
from international_debt$
group by country_name, indicator_code
order by maximum_debt desc