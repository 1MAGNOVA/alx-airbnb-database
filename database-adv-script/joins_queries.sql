SELECT 
  bookings.id AS booking_id,
  users.name AS user_name,
  bookings.property_id
FROM bookings
INNER JOIN users
  ON bookings.user_id = users.id;





SELECT
  properties.name AS property_name,
  reviews.rating
FROM properties
LEFT JOIN reviews
  ON properties.id = reviews.property_id;




SELECT
  users.name AS user_name,
  bookings.id AS booking_id,
  bookings.property_id
FROM users
LEFT JOIN bookings
  ON users.id = bookings.user_id

UNION

SELECT
  users.name AS user_name,
  bookings.id AS booking_id,
  bookings.property_id
FROM bookings
RIGHT JOIN users
  ON users.id = bookings.user_id;

