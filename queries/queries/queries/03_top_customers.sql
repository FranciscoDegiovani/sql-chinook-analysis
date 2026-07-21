-- Question: Who are the top 5 customers by total amount spent?

SELECT
    c.FirstName || ' ' || c.LastName AS CustomerName,
    c.Country,
    ROUND(SUM(i.Total), 2) AS TotalSpent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY TotalSpent DESC
LIMIT 5;
