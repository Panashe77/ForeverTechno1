<?php

$host = "localhost"; // Hostname
$username = "root"; // Database username (default is "root" for XAMPP)
$password = ""; // Database password (default is empty for XAMPP)

// Create a connection to MySQL server
$conn = mysqli_connect($host, $username, $password);

// Check if the connection was successful
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Create the database if it doesn't exist
$database = "exam";
$sql = "CREATE DATABASE IF NOT EXISTS $database";
if (mysqli_query($conn, $sql)) {
    echo "Database created successfully<br>";
} else {
    echo "Error creating database: " . mysqli_error($conn) . "<br>";
}

// Select the database
mysqli_select_db($conn, $database);

// Create the user_form table if it doesn't exist
$table = "user_form";
$sql = "CREATE TABLE IF NOT EXISTS $table (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    password VARCHAR(255) NOT NULL,
    user_type VARCHAR(20) NOT NULL
)";
if (mysqli_query($conn, $sql)) {
    echo "Table $table created successfully<br>";
} else {
    echo "Error creating table: " . mysqli_error($conn) . "<br>";
}

// Insert data into the user_form table
$insertData = "INSERT INTO $table (name, email, phone, password, user_type) VALUES
    ('John Doe', 'john@example.com', '+27 (12) 345-6789', 'password123', 'user'),
    ('Jane Smith', 'jane@example.com', '+27 (11) 987-6543', 'password456', 'admin')";

if (mysqli_query($conn, $insertData)) {
    echo "Data inserted successfully<br>";
} else {
    echo "Error inserting data: " . mysqli_error($conn) . "<br>";
}

// Close the database connection
mysqli_close($conn);

?>
