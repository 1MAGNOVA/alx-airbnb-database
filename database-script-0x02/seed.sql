INSERT INTO User (user_name, password, full_name, email, mobile, details)
VALUES ('Jane_D', 'hashed_password_123', 'Jane Doe', 'jane_doe@email.com', '+2347084374744', 'on a vacation, require a 2 bed apartment');

-- Add a property
INSERT INTO Property (owner_id, title, description, location, price_per_night, max_guests, is_available)
VALUES (1, 'Cozy Loft', 'Modern loft in downtown Lagos', 'Lagos', 'Nigeria', 45000.00, 4, TRUE);

-- Add a booking
INSERT INTO Booking (user_id, property_id, start_date, end_date, price_per_night, booking_status)
VALUES (1, 1, '2025-07-01', '2025-07-05', 45000.00, 'confirmed');

-- Add a payment
INSERT INTO Payment (booking_id, amount, payment_method, payment_status)
VALUES (1, 180000.00, 'card', 'paid');

-- Add a review
INSERT INTO Review (user_id, property_id, rating, comment)
VALUES (1, 1, 5, 'Absolutely loved it!');
