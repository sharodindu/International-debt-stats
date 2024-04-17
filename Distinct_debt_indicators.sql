-/* we are going to analyze international debt data collected by The World Bank.
The dataset contains information about the amount of debt (in USD) owed by developing
countries across several categories. We are going to find the answers to questions like:*/

-- Finding out the distinct debt indicators 

select 
      distinct(indicator_name)
from international_debt$