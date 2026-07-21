-- Question: Which customers spent above the average customer spend?

SELECT
    c.FirstName || ' ' || c.LastName AS CustomerName,
    ROUND(SUM(i.Total), 2) AS TotalSpent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
HAVING SUM(i.Total) > (
    SELECT AVG(CustomerTotal)
    FROM (
        SELECT SUM(Total) AS CustomerTotal
        FROM Invoice
        GROUP BY CustomerId
    )
)
ORDER BY TotalSpent DESC;
