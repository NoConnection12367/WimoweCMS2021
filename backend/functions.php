<?php
	require_once ("config.php");

	if (isset($_POST['DelID']) && !empty($_POST['DelID']))
	{
		print_r('Ich bin drin!');

		$delID = $_POST['DelID'];
	
		$sql = "DELETE FROM media WHERE ID=" . $delID;
	
		print_r($sql);
		echo "<script>console.log( '" . $sql . "' );</script>";

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
?>