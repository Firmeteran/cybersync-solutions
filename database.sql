-- DDL
-- Membuat database
CREATE DATABASE IF NOT EXISTS cybersync_db;
USE cybersync_db;

-- Membuat tabel untuk sistem login/register
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'client') DEFAULT ('client'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- DML
-- Simulasi input data untuk admin dan client (user)
INSERT INTO users (username, email, password, role) VALUES
('budi_admin', 'budi@cybersync.com', '$2y$10$eImiUi..examplehash1', 'admin'),
('siti_designer', 'siti@cybersync.com', '$2y$10$eImiUi..examplehash2', 'admin'),
('first_client', 'klien@company.com', '$2y$10$eImiUi..examplehash3', 'client');


-- Query Login/Register
-- Login, dengan mencari data user untuk melakukan verifikasi
SELECT id, username, password, role
FROM users
WHERE klien@company.com

-- Register, dengan menginput data dari form register
INSERT INTO users (username, email, password, role) VALUES
('new_client', 'new@mail.com', 'hash_password_here', 'role_here')