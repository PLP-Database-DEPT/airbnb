-- create airbnb database
CREATE DATABASE airbnb;

CREATE TABLE category(
id INT PRIMARY KEY,
category_name varchar(50) NOT NULL
);

-- Create attribute_category table
CREATE TABLE attribute_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);


-- creates table booking with relationships
CREATE TABLE bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    user_id INT NOT NULL,
    booking_status_id INT NOT NULL,
    checkin_date DATE NOT NULL,
    checkout_date DATE NOT NULL,
    nightly_price DECIMAL(10, 2) NOT NULL,
    service_fee DECIMAL(10, 2),
    cleaning_fee DECIMAL(10, 2),
    total_price DECIMAL(10, 2),
    
    FOREIGN KEY (property_id) REFERENCES properties(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (booking_status_id) REFERENCES booking_status(id)
);
