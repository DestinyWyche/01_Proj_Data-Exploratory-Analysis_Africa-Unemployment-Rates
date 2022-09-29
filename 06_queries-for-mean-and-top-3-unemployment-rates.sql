-- finding max. unemployment rate each year

SELECT 
  Country
  ,Year
  ,Unemployment_rate
FROM 
  `africa-unemployment-rates.africa.unemployment_rates` 
WHERE
  Unemployment_rate IN (
    SELECT
      MAX(Unemployment_rate)
    FROM
        `africa-unemployment-rates.africa.unemployment_rates` 
    GROUP BY
      Year
  )

-- find top 3 unemployment rates each year

WITH cte AS
  ( SELECT Country, Year, Unemployment_rate,
           ROW_NUMBER() OVER (PARTITION BY Year ORDER BY Unemployment_rate DESC) AS rn
    FROM `africa-unemployment-rates.africa.unemployment_rates`
  )
SELECT Country, Year, Unemployment_rate FROM cte
WHERE rn <= 3
ORDER BY Year, Unemployment_rate DESC
