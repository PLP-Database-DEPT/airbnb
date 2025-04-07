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

-- Creating countries table
-- ensures no duplicate entries for the countries
-- for this to work effectively,the table region must exist
CREATE TABLE country (
    id INT AUTO_INCREMENT PRIMARY KEY,
    region_id INT NOT NULL,
    country_name VARCHAR(255) UNIQUE NOT NULL,
    description TEXT,
    FOREIGN KEY (region_id) REFERENCES region(id)
);