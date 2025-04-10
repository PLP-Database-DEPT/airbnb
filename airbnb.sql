

CREATE TABLE user_account (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_Name VARCHAR(50) NOT NULL,
    last_Name VARCHAR(50) NOT NULL,
    email_address VARCHAR(50) NOT NULL UNIQUE,
    user_password VARCHAR(50) NOT NULL,
    joined_date DATE NOT NULL,
    date_host_started DATE NULL
);
