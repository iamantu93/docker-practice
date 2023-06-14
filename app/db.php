<?php

// Create a database connection
$connection=mysqli_connect("my-mysql-container", "root", "antu1234", "antudb" , "3306");
// Check the connection
if (mysqli_connect_errno()) {
    die("Connection failed: " . mysqli_connect_error());
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $title = $_POST["name"];
    $description = $_POST["description"];
    $image = $_POST["image"];
    
    // Prepare an SQL statement
    $stmt = $connection->prepare("INSERT INTO food_items (title, description, image) VALUES (?, ?, ?)");
    
    // Bind parameters to the statement
    $stmt->bind_param("sss", $title, $description, $image);
    
    // Execute the statement
    if ($stmt->execute()) {
        echo "Form data submitted successfully.";
        echo var_dump($title, $description, $image);
    } else {
        echo "Error: " . $stmt->error;
    }
    
    // Close the statement
    $stmt->close();
}

// Close the database connection
$connection->close();
header("Location: http://192.168.70.132:8000");
exit;
?>
