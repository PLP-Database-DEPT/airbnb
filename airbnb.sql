-- creating location table
CREATE TABLE location (
id INT AUTO_INCREMENT PRIMARY KEY,
country_id INT NOT NULL,
location_name varchar(255) NOT NULL,
FOREIGN KEY (country_id) REFERENCES country(id)
);

