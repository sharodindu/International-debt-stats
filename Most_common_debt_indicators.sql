/* we are going to analyze international debt data collected by The World Bank.
The dataset contains information about the amount of debt (in USD) owed by developing
countries across several categories. We are going to find the answers to questions like: */ 

-- The most common debt indicator ?

SELECT top 20
    count(indicator_code) as indicator_count,
    indicator_code
FROM 
    international_debt$
group by indicator_code
order by indicator_count desc , indicator_code desc;
    