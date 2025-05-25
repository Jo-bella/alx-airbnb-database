-- Step 1: Create a new partitioned bookings table
DROP TABLE IF EXISTS bookings CASCADE;

CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE NOT NULL,
    end_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);


-- Step 2: Create partitions (monthly partitions for 2024)
CREATE TABLE bookings_2024_01 PARTITION OF bookings
    FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');

CREATE TABLE bookings_2024_02 PARTITION OF bookings
    FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');

-- Add more months as needed...


-- Step 3: Test query performance
-- Assume the table is populated with relevant data
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE start_date BETWEEN '2024-01-15' AND '2024-01-31';
