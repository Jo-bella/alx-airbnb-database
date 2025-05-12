# Airbnb Database ERD

## Entities:
- **User**: Contains user information like name, email, and phone number.
- **Property**: Represents properties listed by users (owners).
- **Booking**: Tracks which user booked which property and for how long.
- **Payment**: Records payment information for each booking.
- **Review**: Stores user feedback for each booking.
- **Availability**: Specifies when a property is available for booking.

## Relationships:
- One **User** can own multiple **Properties**.
- One **User** can make multiple **Bookings**.
- One **Property** can be booked many times.
- Each **Booking** has one **Payment**.
- Each **Booking** can have one **Review**.
- One **Property** can have many **Availability** records.

## ER Diagram
See `erd-diagram.jpg` for the visual representation.
