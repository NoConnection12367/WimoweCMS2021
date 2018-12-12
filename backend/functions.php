<?php
	require_once ("config.php");

	if (isset($_GET['DelID']) && !empty($_GET['DelID']))
	{
		print_r('Ich bin drin!');

		$delID = $_GET['DelID'];
	
		$sql = "DELETE FROM media WHERE ID=" . $delID;
	
		print_r($sql);
		echo "<script>console.log( '" . $sql . "' );</script>";

		mysqli_query($conn, $sql);
	}


?>