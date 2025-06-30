# Database Normalization to 3NF

## First Normal Form (1NF)
- All tables contain only atomic (indivisible) values.
- No repeating groups or arrays exist.
✅ The database is in 1NF.

## Second Normal Form (2NF)
- All non-key columns depend on the whole primary key.
- Since all primary keys are single-column (id), no partial dependencies exist.
✅ The database is in 2NF.

## Third Normal Form (3NF)
- We eliminated all transitive dependencies:
    - Removed `total_price` from Booking as it can be calculated.
    - Ensured no derived attributes (like `age`, `full_location`) are stored.
    - All non-key columns depend directly on the primary key.
✅ The database is in 3NF.

## Summary of Changes
- Removed derived column `total_price` from `Booking`.
- Ensured `Property.location` is structured (optional improvement).
- Avoided storing redundant or calculated fields.

✅ The database is fully normalized up to **Third Normal Form (3NF)**.
