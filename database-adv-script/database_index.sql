-- Index on users.id for joins and user-specific queries
CREATE INDEX idx_users_id ON users(id);

-- Index on bookings.user_id for frequent joins and WHERE filters
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on bookings.property_id for filtering and joining with properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on properties.id for joins and WHERE clauses
CREATE INDEX idx_properties_id ON properties(id);

-- Index on bookings.created_at for filtering and sorting by booking date
CREATE INDEX idx_bookings_created_at ON bookings(created_at);
