sql

-- Create Table User

CREATE TABLE IF NOT EXISTS User (
	id SERIAL PRIMARY KEY,
	user_name VARCHAR(64) NOT NULL,
	password VARCHAR(64) NOT NULL,
	full_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
	mobile VARCHAR(255) NOT NULL,
	details VARCHAR(1000) NOT NULL,
	is_host BOOLEAN DEFAULT FALSE,
);


-- Create Table Property

CREATE TABLE IF NOT EXISTS Property (
	id SERIAL PRIMARY KEY,
	owner_id INTEGER NOT NULL REFERENCES User(id),
	description VARCHAR(1000) NOT NULL,
	location VARCHAR(255) NOT NULL,
	price_per_night DECIMAL(10, 2) NOT NULL,
	max_guests INTEGER,
	time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	is_available BOOLEAN DEFAULT TRUE,
);

--Create Table Booking

CREATE TABLE IF NOT EXISTS Booking (
	
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES User(id),
    property_id INTEGER NOT NULL REFERENCES Property(id),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    booking_status VARCHAR(20) DEFAULT 'pending',
    booking_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

);

--create Table Payment 
CREATE TABLE IF NOT EXISTS Payment (
    id SERIAL PRIMARY KEY,
    booking_id INTEGER UNIQUE NOT NULL REFERENCES Booking(id),
    amount DECIMAL(10, 2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method VARCHAR(30),
    status VARCHAR(20) DEFAULT 'pending'
);

-- Create the Review table
CREATE TABLE IF NOT EXISTS Review (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES User(id),
    property_id INTEGER NOT NULL REFERENCES Property(id),
    rating INTEGER CHECK (rating BETWEEN 1 AND 5),
    comment VARCHAR(1000),
    comment_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
