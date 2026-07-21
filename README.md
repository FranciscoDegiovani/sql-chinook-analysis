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

| # | Question | Result | File |
|---|---|---|---|
| 01 | Which are the top 5 countries by total revenue? | USA ($523.06), Canada ($303.96), France ($195.10), Brazil ($190.10), Germany ($156.48) | `queries/01_top_countries_by_revenue.sql` |
| 02 | Which music genre generates the most revenue? | Rock ($826.65), Latin ($382.14), Metal ($261.36), Alternative & Punk ($241.56), TV Shows ($93.53) | `queries/02_revenue_by_genre.sql` |
