-- Question: What is the monthly revenue trend?

SELECT
    strftime('%Y-%m', InvoiceDate) AS Month,
    ROUND(SUM(Total), 2) AS TotalRevenue
FROM Invoice
GROUP BY Month
ORDER BY Month;
