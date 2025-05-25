-- Initial query (unoptimized) with WHERE and AND
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.created_at AS booking_date,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.id AS payment_id,
    pay.amount AS payment_amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.created_at >= '2023-01-01'
  AND u.country = 'USA';

-- Refactored query (optimized)
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.created_at AS booking_date,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount AS payment_amount
FROM bookings b
LEFT JOIN users u ON b.user_id = u.id
LEFT JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id
WHERE b.created_at >= '2023-01-01'
  AND u.country = 'USA';
