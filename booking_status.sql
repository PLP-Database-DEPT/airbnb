CREATE TABLE booking_status (
    id INT AUTO_INCREMENT PRIMARY KEY,  
    status_name VARCHAR(50) NOT NULL,    
    UNIQUE INDEX idx_status_name_unique (status_name)
);

-- Seed initial booking statuses
INSERT INTO booking_status (status_name) VALUES 
('Awaiting Approval'), 
('Approved'), 
('Cancelled');