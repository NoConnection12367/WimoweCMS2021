<?php
	require_once ("config.php");

	if (isset($_POST['DelID']) && !empty($_POST['DelID']))
	{	
		$sql = "DELETE FROM media WHERE ID=" . $_POST['DelID'];
		mysqli_query($conn, $sql);
	}


?>