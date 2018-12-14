<?php
	require_once ("config.php");

	if (isset($_POST['DelID']) && !empty($_POST['DelID']))
	{	
		$sql = "DELETE FROM media WHERE ID=" . $_POST['DelID'];
		mysqli_query($conn, $sql);
	}

	//content saver
	if (isset($_POST['content']) && isset($_POST['siteid']))
	{
		$content = $_REQUEST["content"];
		$siteid = $_REQUEST["siteid"];
		
		$sql = "INSERT INTO content_de (Content, SiteID) VALUES ('" . $content . "', '" . $siteid . "')  ON DUPLICATE KEY UPDATE Content=\" . $content . \"";
		if (mysqli_query($conn, $sql)) {
			echo "Content wurde gespeichert.";
		} else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
	}

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



	// Function to retrieve the current permission level of the logged-in user
	function permissionLevel() {

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