# Index Performance Report – ALX Airbnb Database Project

## 🎯 Objective

Improve query performance on the Airbnb database by creating appropriate indexes and evaluating their impact.

---

## 🔍 High-Usage Columns Identified

Based on common query patterns (WHERE, JOIN, ORDER BY), the following columns were identified:

- `users.id` – used in JOIN with bookings
- `bookings.user_id` – used in JOIN and filtering
- `bookings.property_id` – used in JOIN with properties
- `bookings.created_at` – used for sorting/filtering recent bookings
- `properties.id` – used in JOIN and WHERE

---

## ⚙️ Indexes Created (`database_index.sql`)

```sql
CREATE INDEX idx_users_id ON users(id);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_id ON properties(id);
CREATE INDEX idx_bookings_created_at ON bookings(created_at);
