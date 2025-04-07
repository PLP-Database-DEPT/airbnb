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


---Create the property_category table with property and category id being foreign keys from propert and category tables

CREATE TABLE property_category (
    property_id INT NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (property_id, category_id),
    FOREIGN KEY (property_id) REFERENCES property(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
);
