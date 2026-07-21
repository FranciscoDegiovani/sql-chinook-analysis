-- Question: What are the top 5 countries by total revenue?

SELECT
    BillingCountry AS Country,
    ROUND(SUM(Total), 2) AS TotalRevenue
FROM Invoice
GROUP BY BillingCountry
ORDER BY TotalRevenue DESC
LIMIT 5;



feat: add query for top 5 countries by revenue
