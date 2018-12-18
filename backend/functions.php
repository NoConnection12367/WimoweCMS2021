<?php
	require_once ("config.php");

	// executed, if media is deleted from mediathek
	if (isset($_POST['DelID']) && !empty($_POST['DelID']))
	{	
		$sql = "SELECT Path FROM media WHERE ID=" . $_POST['DelID'];
		$res = mysqli_query($conn, $sql);

		if (mysqli_num_rows($res) > 0) {
			while($row = mysqli_fetch_assoc($res)) {
				echo $row["Path"];
				unlink($row["Path"]);
			}
		}

		$sql = "DELETE FROM media WHERE ID=" . $_POST['DelID'];
		mysqli_query($conn, $sql);
	}

	// save media to media directory for mediathek
	if (isset($_FILES['file']['tmp_name']) && !empty($_FILES['file']['tmp_name'])){
		
		$path = "media/" . $_FILES['file']['name'];
		$titel = $_FILES['file']['name'];
		$autor = "Domi"; //später session-inhaber
		$datum = date("Y-m-d", time());
		$format = $_FILES['file']['type'];

		$sql = "INSERT INTO media (Path, Titel, Autor, Datum, Format) VALUES ('" . $path . "', '" . $titel . "', '" . $autor . "', '" . $datum . "', '" . $format . "')";
		mysqli_query($conn, $sql);
		
		if ( 0 < $_FILES['file']['error'] ) {
			echo 'Error: ' . $_FILES['file']['error'] . '<br>';
		}
		else {
			move_uploaded_file($_FILES['file']['tmp_name'], 'media/' . $_FILES['file']['name']);
		}
		
	}

	//content saver
	if (isset($_POST['content']) && isset($_POST['siteid']))
	{
		$content = $_REQUEST["content"];
		$siteid = $_REQUEST["siteid"];
		
		$sql = "INSERT INTO content_de (Content, SiteID) VALUES ('" . $content . "', '" . $siteid . "')  ON DUPLICATE KEY UPDATE Content=\"$content\"";
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