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