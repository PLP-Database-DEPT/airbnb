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
