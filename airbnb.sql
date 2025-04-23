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
