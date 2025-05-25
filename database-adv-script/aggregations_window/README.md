# Aggregations & Window Functions – ALX Airbnb Database Project

This directory contains SQL queries demonstrating the use of aggregation and window functions to analyze data in the Airbnb clone database.

## Files

- `aggregations_and_window_functions.sql`: SQL script with two queries using aggregation and window functions.

## Queries

### 1. Total Bookings per User
- Uses the `COUNT()` aggregate function with `GROUP BY user_id`.
- Returns the total number of bookings made by each user.
- Sorted by `user_id`.

```sql
SELECT
    user_id,
    COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id
ORDER BY user_id;
