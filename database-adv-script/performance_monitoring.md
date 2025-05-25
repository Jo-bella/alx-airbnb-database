# Database Performance Monitoring Report

##  Objective

Continuously monitor and refine query performance in the Airbnb clone database by analyzing execution plans and making schema or indexing adjustments as needed.

---

##  Step 1: Queries Monitored

### Query 1: Fetch bookings by user and date

```sql
SELECT *
FROM bookings
WHERE user_id = 42 AND start_date >= '2024-01-01';
