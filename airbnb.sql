-- create database and tables for airbnb project
CREATE DATABASE airbnbdb;
USE airbnbdb;

-- user_account table
  CREATE TABLE user_account (
  user_id int PRIMARY KEY AUTO_INCREMENT,
  first_name varchar(100),
  last_name varchar(100),
  email_address varchar(100),
  password varchar(100),
  joined_date date,
  date_host_started date
);


-- user_account table 
  CREATE TABLE property (
  property_id int PRIMARY KEY AUTO_INCREMENT,
  location_id varchar(100),
  place_type_id varchar(100),
  property_type_id int,
  host_id varchar(100),
  nightly_price int,
  property_name varchar(100),
  num_guests int,
  num_beds int,
  num_bedrooms int,
  is_guest_favorite varchar(100),
  description varchar(100),
  address_line_1 int,
  address_line_2 int,
  PRIMARY KEY (property_id),
  KEY location_id (location_id),
  KEY property_type_id (property_type_id),
  KEY host_id (host_id),

  FOREIGN KEY (location_id) REFERENCES location (location_id),
  FOREIGN KEY (property_type_id) REFERENCES property_type (property_type_id),
  FOREIGN KEY (host_id) REFERENCES host (host_id)
);


-- favorite table
  CREATE TABLE favorite (
  property_id int,
  user_id int,
  KEY property_id (property_id),
  KEY user_id (user_id),

  FOREIGN KEY (property_id) REFERENCES property (property_id),
  FOREIGN KEY (user_id) REFERENCES useraccount (user_id)
);


-- user_review table
  CREATE TABLE user_review (
  user_review_id PRIMARY KEY varchar(100),
  property_id int,
  user_id int,
  overall_rating int,
  comment varchar(100),
  review_date date,
  KEY property_id (property_id),
  KEY user_id (user_id),

  FOREIGN KEY (property_id) REFERENCES property (property_id),
  FOREIGN KEY (user_id) REFERENCES useraccount (user_id)
);


-- user_language table 
  CREATE TABLE user_language (
  user_id int,
  language_id varchar(100),
  KEY user_id (user_id),
  KEY language_id (language_id),
  FOREIGN KEY (user_id) REFERENCES useraccount (user_id),
  FOREIGN KEY (language_id) REFERENCES language (language_id)
);


-- review_component table 
  CREATE TABLE review_component (
  review_component_id varchar(100) PRIMARY KEY,
  component_name varchar(100)
);


-- review table 
  CREATE TABLE review (
  review_id varchar(100) PRIMARY KEY
);


-- region table
  CREATE TABLE region (
  region_id int PRIMARY KEY AUTO_INCREMENT,
  region_name varchar(100),
);


-- property_type table
  CREATE TABLE property_type (
  property_type_id int PRIMARY KEY AUTO_INCREMENT,
  type_name varchar(100)
);


-- property_attribute table
  CREATE TABLE property_attribute (
  property_id varchar(100),
  attribute_id varchar(100),
  KEY attribute_id (attribute_id),

  FOREIGN KEY (attribute_id) REFERENCES attribute (attribute_id)
);


-- product_category table
  CREATE TABLE product_category (
  property_id int,
  category_id varchar(100),
  KEY propery_id (property_id),
  KEY category_id (category_id),
  
  FOREIGN KEY (property_id) REFERENCES property (property_id),
  FOREIGN KEY (category_id) REFERENCES category (category_id)
);


-- place_type table
  CREATE TABLE place_type (
  place_type_id varchar(100) PRIMARY KEY,
  type_name varchar(100)
);


-- location table 
  CREATE TABLE location (
  location_id varchar(100) PRIMARY KEY,
  country_id int,
  location_name varchar(100),
  KEY country_id (country_id),

  FOREIGN KEY (country_id) REFERENCES country (country_id)
);



-- language table
  CREATE TABLE language (
  language_id varchar(100) PRIMARY KEY,
  language_name varchar(100)
);


-- host table 
  CREATE TABLE host (
  host_id varchar(100) PRIMARY KEY,
  language_id varchar(100)
);


-- guest_type table
  CREATE TABLE guest_type (
  guest_type_id varchar(100) PRIMARY KEY,
  type_name varchar(100)
);


-- country table 
  CREATE TABLE country (
  country_id int PRIMARY KEY AUTO_INCREMENT,
  region_id int,
  country_name varchar(100),
  description varchar(100),
  KEY region_id (region_id),
  
  FOREIGN KEY (region_id) REFERENCES region (region_id)
);


-- component_rating table 
  CREATE TABLE component_rating (
  component_id int,
  review_id varchar(100),
  rating int,
  KEY review_id (review_id),
  KEY component_id (component_id),
  
  FOREIGN KEY (review_id) REFERENCES review (review_id),
  FOREIGN KEY (component_id) REFERENCES component (component_id)
);


-- component table
  CREATE TABLE component (
  component_id int PRIMARY KEY AUTO_INCREMENT
);


-- category table 
  CREATE TABLE category (
  category_id varchar(100) PRIMARY KEY,
  component_name varchar(100)
);






