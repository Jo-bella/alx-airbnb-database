# Partitioning Performance Report – ALX Airbnb Database

## 🎯 Objective

Improve query performance on the large `bookings` table using partitioning based on the `start_date` column.

---

## ⚙️ Implementation

- Created a partitioned `bookings` table using PostgreSQL `PARTITION BY RANGE`.
- Partitioned monthly for the year 2024.
- Example partitions: `bookings_2024_01`, `bookings_2024_02`, etc.
- Populated partitions with sample data.

---

## 🔍 Performance Test

### Query Tested

```sql
SELECT * 
FROM bookings 
WHERE start_date BETWEEN '2024-01-15' AND '2024-01-31';
