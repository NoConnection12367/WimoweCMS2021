<?php

    require_once("../config.php");

    // Request to create a new user
	if (isset($_POST['username']) && isset($_POST['password']) && isset($_POST['rightID']))
	{
        $hash = hash("sha256", $_POST['password'], false);

		// Check if username already exists
		$sql = sprintf("UPDATE user SET Username='%s',PasswordHash='%s', GroupID='%s' WHERE ID='%s'", $_POST['username'], $hash, $_POST['rightID'], $_POST['userID']);
		mysqli_query($conn, $sql);

        echo "Success";
    }
?>