CREATE TABLE booking_status (
id INT AUTO_INCREMENT PRIMARY KEY,  
status_name VARCHAR(50) NOT NULL,    
UNIQUE (status_name)
);

-- Place Type
CREATE TABLE place_type (
    id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(50)
);

CREATE TABLE user_account (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_Name VARCHAR(50) NOT NULL,
    last_Name VARCHAR(50) NOT NULL,
    email_address VARCHAR(50) NOT NULL UNIQUE,
    user_password VARCHAR(50) NOT NULL,
    joined_date DATE NOT NULL,
    date_host_started DATE NULL
);
-- Create the region table
CREATE TABLE region(
id INT AUTO_INCREMENT PRIMARY KEY,
region_name varchar(20) NOT NULL
);
-- Create attribute_category table
CREATE TABLE attribute_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);
-- creating a language table
CREATE TABLE language(
    id INT PRIMARY KEY AUTO_INCREMENT,
    language_name VARCHAR(100)
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
CREATE TABLE country (
    id INT AUTO_INCREMENT PRIMARY KEY,
    region_id INT NOT NULL,
    country_name VARCHAR(255) UNIQUE NOT NULL,
    description TEXT,
    FOREIGN KEY (region_id) REFERENCES region(id)
);

CREATE TABLE property (
    id INT PRIMARY KEY AUTO_INCREMENT,
    location_id INT,
    place_type_id INT,
    property_type_id INT,
    host_id INT,
    nightly_price DECIMAL(10,2),
    property_name VARCHAR(100),
    num_guests INT,
    num_beds INT,
    num_bedrooms INT,
    num_bathrooms INT,
    is_guest_favourite TINYINT(1),  -- 0 for No, 1 for Yes
    description TEXT,
    address_line_1 VARCHAR(250),
    address_line_2 VARCHAR(250),

    FOREIGN KEY (location_id) REFERENCES location(id),
    FOREIGN KEY (place_type_id) REFERENCES place_type(id),
    FOREIGN KEY (property_type_id) REFERENCES property_type(id),
    FOREIGN KEY (host_id) REFERENCES host(id)
  );

