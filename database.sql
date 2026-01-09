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
-- Simulasi input data untuk admin dan client (user) - Create
INSERT INTO users (username, email, password, role) VALUES
('budi_admin', 'budi@cybersync.com', '$2y$10$eImiUi..examplehash1', 'admin'),
('siti_designer', 'siti@cybersync.com', '$2y$10$eImiUi..examplehash2', 'admin'),
('first_client', 'klien@company.com', '$2y$10$eImiUi..examplehash3', 'client');

-- Read
-- Menampilkan semua daftar pengguna yang terdaftar
SELECT id, username, email, role, created_at 
FROM users 
ORDER BY created_at DESC;

-- Mencari data user berdasarkan email untuk verifikasi login
SELECT id, username, password, role 
FROM users 
WHERE email = 'klien@company.com';

-- Update
-- Mengubah username dan email berdasarkan ID pengguna
UPDATE users 
SET username = 'client_updated', 
    email = 'updated_klien@company.com' 
WHERE id = 3;

-- Mengubah password (menggunakan hash password baru)
UPDATE users 
SET password = '$2y$10$new_secure_hash_here' 
WHERE id = 3;

-- Delete
-- Menghapus akun pengguna secara permanen
DELETE FROM users 
WHERE id = 3;