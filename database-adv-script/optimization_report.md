# Query Optimization Report

## 🎯 Objective

Refactor a complex query that retrieves bookings with user, property, and payment details, and improve its performance using indexing and efficient JOINs.

---

## 🧪 Initial Query

The original query joined the following tables using `INNER JOIN`:

- `bookings`
- `users`
- `properties`
- `payments`

```sql
SELECT ...
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;
