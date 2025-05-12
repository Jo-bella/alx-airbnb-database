-- Create User table
CREATE TABLE User (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Create Property table
CREATE TABLE Property (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(150),
    owner_id INTEGER NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES User(id)
);

-- Create Booking table
CREATE TABLE Booking (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    property_id INTEGER NOT NULL,
    booking_date DATE NOT NULL,
    status VARCHAR(50) DEFAULT 'pending',
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (property_id) REFERENCES Property(id)
);

-- Create Payment table
CREATE TABLE Payment (
    id SERIAL PRIMARY KEY,
    booking_id INTEGER NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATE NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES Booking(id)
);

-- Create Indexes for faster queries (optional but good practice)
CREATE INDEX idx_property_owner ON Property(owner_id);
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_payment_booking ON Payment(booking_id);
