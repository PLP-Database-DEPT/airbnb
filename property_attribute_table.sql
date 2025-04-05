-- Property attribute Table
CREATE TABLE property_attribute(
	property_id INT,
	attribute_id INT,
	PRIMARY KEY(property_id, attribute_id),
	FOREIGN KEY (property_id) REFERENCES property(id),
	FOREIGN KEY (attribute_id) REFERENCES attribute(id)
);