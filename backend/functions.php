<?php

	if (isset($_POST['DelID']) && !empty($_POST['DelID']))
	{
		print_r('Ich bin drin!');

		$delID = $_POST['DelID'];
	
		$sql = "DELETE FROM media WHERE DelID=" . $delID;
	
		print_r($sql);
		echo "<script>console.log( '" . $sql . "' );</script>";

		//mysqli_query($conn, $sql);
	}


?>