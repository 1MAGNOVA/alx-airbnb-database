SELECT 
  bookings.id AS booking_id,
  users.name AS user_name,
  bookings.property_id
FROM bookings
INNER JOIN users
  ON bookings.user_id = users.id;

