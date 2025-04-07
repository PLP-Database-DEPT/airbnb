
-- create airbnb database
CREATE DATABASE airbnb;
USE airbnb;

CREATE TABLE category(
id INT PRIMARY KEY,
category_name varchar(50) NOT NULL
);

-- Create attribute_category table
CREATE TABLE attribute_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
)

--create user-review table
CREATE TABLE user_review (  
    id INT PRIMARY KEY,  
    property_id INT,  
    user_id INT,  
    overall_rating INT,  
    comment varchar(255),  
    review_date DATE,  
    FOREIGN KEY (property_id) REFERENCES property(id),  
    FOREIGN KEY (user_id) REFERENCES user(id)  
);  