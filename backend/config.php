<?php 
	$folder_pages = "pages";

	// Connect to sql database

	// Define constants
	$servername = "localhost";
	$username = "root";
	$password = "";

	// Create connection
	$conn = mysqli_connect($servername, $username, $password);

	// Check connection
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}
	else
	{
		mysqli_set_charset($conn,"utf8");
		mysqli_select_db ($conn, "wimowe");
	}

	session_start();
?>