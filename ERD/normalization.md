# Database Normalization Report

## Overview

This document explains how normalization was applied to the Airbnb-like database design to ensure data consistency and efficiency. The final schema follows the principles of First, Second, and Third Normal Forms (1NF, 2NF, 3NF).

---

## 1. First Normal Form (1NF)

- All attributes are atomic.
- No repeating groups or arrays are used.
- Example: `User.name = "John Doe"` (atomic), not `User.name = "John, Mike"`.

 The database meets 1NF.

---

## 2. Second Normal Form (2NF)

- All non-key attributes depend on the entire primary key.
- Since most tables use a single-column primary key (`id`), 2NF is naturally satisfied.
- No partial dependencies exist.

 The database meets 2NF.

---

## 3. Third Normal Form (3NF)

- No transitive dependencies exist between non-key attributes.
- Example: `User.email` is stored only in the `User` table, not in `Booking` or `Payment`.

 The database meets 3NF.

---

## Conclusion

All tables in the ERD were reviewed and adjusted to eliminate redundancy. The design is now fully normalized to 3NF, ensuring efficiency and data integrity.
