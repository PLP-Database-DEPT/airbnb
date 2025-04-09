-- Create database airbnb if not exist
CREATE DATABASE IF NOT EXIST airbnb;
USE airbnb;
create-location-table
-- creating location table
CREATE TABLE location (
id INT AUTO_INCREMENT PRIMARY KEY,
country_id INT NOT NULL,
location_name varchar(255) NOT NULL,
FOREIGN KEY (country_id) REFERENCES country(id)
);


CREATE TABLE category(
id INT PRIMARY KEY,
category_name varchar(50) NOT NULL
);

-- Create attribute_category table
CREATE TABLE attribute_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);
