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


	// Function to retrieve the current permission level of the logged-in user
	function permissionLevel() {

		// Check if a session is open already
		if (!isset($_SESSION["activeUser"])) return 0;

		global $conn;

		// Assemble sql query-string
		$sql = sprintf("SELECT * FROM user LEFT JOIN user_rights ON user.GroupID=user_rights.ID WHERE Username='%s'", $_SESSION["activeUser"]);
		if($result = mysqli_query($conn, $sql))
		{
			if($row = mysqli_fetch_assoc($result)) {
				return $row["RightLevel"];
			}
			else {
				return 0;
			}
		}
		else {
			return 0;
		}
	}
?>