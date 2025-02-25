<?php

$host = "db"; // The service name for the MySQL container
$username = "your_username"; // Replace with your actual MySQL username
$password = "your_password"; // Replace with your actual MySQL password
$database = "exam"; // Your database name

// Create a connection to MySQL server
$conn = mysqli_connect($host, $username, $password);

// Check if the connection was successful
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Proceed with your database operations...

// Close the database connection
mysqli_close($conn);

?>
