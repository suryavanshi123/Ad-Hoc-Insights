
/*8. In which quarter of 2020, got the maximum total_sold_quantity? The final
output contains these fields sorted by the total_sold_quantity,
Quarter
total_sold_quantity*/
SELECT 
    CASE 
        WHEN MONTH(date) BETWEEN 1 AND 3 THEN 'Q1'
        WHEN MONTH(date) BETWEEN 4 AND 6 THEN 'Q2'
        WHEN MONTH(date) BETWEEN 7 AND 9 THEN 'Q3'
        WHEN MONTH(date) BETWEEN 10 AND 12 THEN 'Q4'
    END AS Quarter,
    SUM(sold_quantity) AS total_sold_quantity
FROM 
    fact_sales
WHERE 
    YEAR(date) = 2020
GROUP BY 
    Quarter
ORDER BY 
    total_sold_quantity DESC
LIMIT 1;
