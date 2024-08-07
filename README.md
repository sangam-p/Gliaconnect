# project

A new Flutter project.

## Getting Started

Move "flutter_backend" directory to C:\xampp\htdocs before running the app.
Now in Mysql, create a database named user_registration and create a table named users.

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    mobile VARCHAR(20),
    dob DATE
);
