-- Question: Who are the top 3 artists by revenue within each genre?

WITH ArtistGenreRevenue AS (
    SELECT
        g.Name AS Genre,
        ar.Name AS Artist,
        SUM(il.UnitPrice * il.Quantity) AS Revenue
    FROM InvoiceLine il
    JOIN Track t ON il.TrackId = t.TrackId
    JOIN Genre g ON t.GenreId = g.GenreId
    JOIN Album al ON t.AlbumId = al.AlbumId
    JOIN Artist ar ON al.ArtistId = ar.ArtistId
    GROUP BY g.Name, ar.Name
),
RankedArtists AS (
    SELECT
        Genre,
        Artist,
        Revenue,
        RANK() OVER (PARTITION BY Genre ORDER BY Revenue DESC) AS Rank
    FROM ArtistGenreRevenue
)
SELECT Genre, Artist, ROUND(Revenue, 2) AS Revenue, Rank
FROM RankedArtists
WHERE Rank <= 3
ORDER BY Genre, Rank;
