<?php

    require_once("../config.php");

    // Request to create a new user
	if (isset($_POST['username']) && isset($_POST['password']) && isset($_POST['rightGroup']))
	{
		// Check if username already exists
		$sql = "SELECT * FROM user WHERE Username='" . $_POST['username'] . "'";
		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) > 0) {

			// User does already exist, return errormessage
			echo "Der eingegebene Benutzername existiert bereits. Bitte verwenden Sie einen anderen Benutzernamen.";
		}
		else
		{
			// User does not exist, create a new user
			$hash = hash("sha256", $_POST['password'], false);

			// Assemble sql query-string
			$sql = sprintf("INSERT INTO user (Username, GroupID, PasswordHash) VALUES ('%s', '%s', '%s')", $_POST['username'], $_POST['rightGroup'], $hash);
			if(mysqli_query($conn, $sql))
			{
				// Success
				echo "Success";
			}
			else
			{
				// Unknown error occured, return errormessage
				echo "Benutzer konnte nicht erstellt werden.";
			}
		}

    }
?>