/* we are going to analyze international debt data collected by The World Bank.
The dataset contains information about the amount of debt (in USD) owed by developing
countries across several categories. We are going to find the answers to questions like: */ 

-- The highest amount of principal repayments ?

SELECT 
    country_name, 
    indicator_name
FROM international_debt$
WHERE debt = (SELECT 
                max(debt) 
                FROM international_debt$
				where indicator_code = 'DT.AMT.DLXF.CD'
                );