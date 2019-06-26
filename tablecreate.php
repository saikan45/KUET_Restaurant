<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "porosh";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// sql to create table
$sql = "CREATE TABLE MyUsers (
    Id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    Firstname VARCHAR(30) NOT NULL,
    Lastname VARCHAR(30) NOT NULL,
    Email VARCHAR(50),
    Passwrd VARCHAR(30),
    Birthdate date,
    Gender VARCHAR(10),
    reg_date TIMESTAMP
    )";

$sql = "CREATE TABLE booking (
     
    name VARCHAR(30) NOT NULL,
    date VARCHAR(30) NOT NULL,
    time VARCHAR(50) NOT NULL,
    guest VARCHAR(30) NOT NULL,
    budget int(11) NOT NULL,
    c_name VARCHAR(10) NOT NULL,
    email varchar(30) NOT NULL,
    phone int(11) NOT NULL,
    msg varchar(30) NOT NULL

    )";
 
    



if (mysqli_query($conn, $sql)) {
    echo "Table created successfully";
} else {
    echo "Error creating table: " . mysqli_error($conn);
}

mysqli_close($conn);
?>