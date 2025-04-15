CREATE TABLE guest_type(
id INT PRIMARY KEY,
type_name varchar(50) NOT NULL,
FOREIGN KEY (id) REFERENCES booking_guests(booking_id) ON DELETE CASCADE 
);