# Join Queries – ALX Airbnb Database Project

This directory contains advanced SQL queries using different types of joins for the Airbnb database.

## Files

- `joins_queries.sql`: Contains three SQL queries:
  1. **INNER JOIN** – Bookings and their respective users.
  2. **LEFT JOIN** – Properties and their reviews, including those without reviews.
  3. **FULL OUTER JOIN** – All users and all bookings, even if not linked.

## Notes

- If using MySQL (which doesn’t support FULL OUTER JOIN), a UNION of LEFT and RIGHT joins is used as an alternative.
