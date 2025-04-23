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

-- Create the review_component table with the following columns:
-- id (int)
-- component_name (varchar)

-- Ensure that the id is unique for each row.

CREATE TABLE review_component (
    id INT PRIMARY KEY,
    component_name VARCHAR(255) NOT NULL
);