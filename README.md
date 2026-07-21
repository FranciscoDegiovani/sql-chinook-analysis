# SQL Practice — Chinook Database

Hands-on SQL project using the [Chinook sample database](https://github.com/lerocha/chinook-database), a digital media store dataset (customers, invoices, artists, albums, tracks). Built as part of my data analytics portfolio to practice writing business-style SQL queries: joins, aggregations, filtering, and ranking.

## Dataset

- **Source:** Chinook Database (SQLite version)
- **Content:** Customers, invoices, employees, artists, albums, tracks, playlists
- File: `Chinook_Sqlite.sqlite`

## Tools

- SQL (SQLite)
- DB Browser for SQLite (or equivalent) for local querying

## Structure

queries/
  01_top_countries_by_revenue.sql
data/
  Chinook_Sqlite.sqlite

## Queries

| # | Question | Key Result | File |
|---|---|---|---|
| 01 | Top 5 countries by total revenue | USA leads with $523.06, followed by Canada ($303.96) and France ($195.10) | `queries/01_top_countries_by_revenue.sql` |
| 02 | Which genre generates the most revenue | Rock dominates with $826.65 — more than double the next genre (Latin, $382.14) | `queries/02_revenue_by_genre.sql` |
| 03 | Top 5 customers by amount spent | Helena Holý (Czech Republic) leads with $49.62 | `queries/03_top_customers.sql` |
| 04 | Monthly revenue trend | Revenue is stable month-to-month (~$37.62 baseline) with occasional spikes (e.g., Jan 2010: $52.62) | `queries/04_monthly_revenue.sql` |
| 05 | Top 3 artists by revenue within each genre | Uses a window function (`RANK() OVER PARTITION BY`) — e.g., Metallica leads Metal ($90.09), U2 leads Rock ($90.09) | `queries/05_top_artists_by_genre.sql` |
| 06 | Customers who spent above the average | 22 out of the customer base spent above the mean — uses a correlated subquery to calculate the threshold | `queries/06_above_average_customers.sql` |

## Skills Demonstrated

- Aggregations (`SUM`, `AVG`, `ROUND`) and grouping (`GROUP BY`, `HAVING`)
- Multi-table joins (up to 4 tables in a single query)
- Date functions (`strftime`)
- Window functions (`RANK() OVER PARTITION BY`)
- Common Table Expressions (CTEs)
- Subqueries

## Status

Complete — 6 queries covering aggregation, joins, date functions, window functions, CTEs, and subqueries.
