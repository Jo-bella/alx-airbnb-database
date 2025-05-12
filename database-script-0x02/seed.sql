-- Insert sample users
INSERT INTO Users (name, email, password) VALUES
('Alice Johnson', 'alice@example.com', 'hashed_pwd1'),
('Bob Smith', 'bob@example.com', 'hashed_pwd2'),
('Charlie King', 'charlie@example.com', 'hashed_pwd3');

-- Insert sample properties
INSERT INTO Properties (owner_id, title, description, location, price_per_night) VALUES
(1, 'Modern Loft', 'Beautiful modern apartment in the city center.', 'Addis Ababa', 45.00),
(2, 'Cozy Cottage', 'Quiet countryside cottage for relaxing weekends.', 'Hawassa', 30.00);

-- Insert sample bookings
INSERT INTO Bookings (user_id, property_id, start_date, end_date, total_price, status) VALUES
(2, 1, '2025-05-20', '2025-05-23', 135.00, 'Confirmed'),
(3, 2, '2025-06-01', '2025-06-05', 120.00, 'Pending');

-- Insert sample payments
INSERT INTO Payments (booking_id, amount, payment_method, paid_at) VALUES
(1, 135.00, 'Credit Card', '2025-05-15 10:00:00'),
(2, 120.00, 'Mobile Money', '2025-05-20 14:30:00');
