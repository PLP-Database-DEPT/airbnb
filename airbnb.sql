-- create airbnb database
CREATE DATABASE airbnb;

USE airbnb;
-- Create the region table
CREATE TABLE region(
id INT AUTO_INCREMENT PRIMARY KEY,
region_name varchar(20) NOT NULL
);

-- Insert data into the table
INSERT INTO region(region_name) 
VALUES
    ('Eldoret'),
    ('Bungoma'),
    ('Kisii'),
    ('Kakamega'),
    ('Machakos'),
    ('Busia');