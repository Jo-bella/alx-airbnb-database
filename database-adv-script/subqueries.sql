-- Non-Correlated Subquery: Properties with average rating > 4.0
SELECT id, name
FROM properties
WHERE id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
)
ORDER BY id;

-- Correlated Subquery: Users with more than 3 bookings
SELECT id, first_name, last_name
FROM users
WHERE (
    SELECT COUNT(*)
    FROM bookings
    WHERE bookings.user_id = users.id
) > 3
ORDER BY id;
