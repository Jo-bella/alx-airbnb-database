-- Create indexes to improve query performance

-- Index on users.id
CREATE INDEX IF NOT EXISTS idx_users_id ON users(id);

-- Index on bookings.user_id
CREATE INDEX IF NOT EXISTS idx_bookings_user_id ON bookings(user_id);

-- Index on bookings.property_id
CREATE INDEX IF NOT EXISTS idx_bookings_property_id ON bookings(property_id);

-- Index on properties.id
CREATE INDEX IF NOT EXISTS idx_properties_id ON properties(id);

-- Index on bookings.created_at
CREATE INDEX IF NOT EXISTS idx_bookings_created_at ON bookings(created_at);


-- Performance analysis using EXPLAIN ANALYZE

-- 1. Analyze a common query: selecting bookings by a specific user, ordered by creation date
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 1
ORDER BY created_at DESC;


-- 2. Analyze a join query between bookings and users
EXPLAIN ANALYZE
SELECT b.*
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.id = 2;


-- 3. Analyze a join between bookings and properties
EXPLAIN ANALYZE
SELECT b.*
FROM bookings b
JOIN properties p ON b.property_id = p.id
WHERE p.id = 3;
