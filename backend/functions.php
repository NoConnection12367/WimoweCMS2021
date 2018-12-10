<?php

    if (isset($_POST["DelID"]) && !empty($_POST["DelID"]))
	{
		$sql = "DELETE FROM media WHERE DelID=".$_POST['DelID'];
	
		echo "<script>console.log( 'Debug Objects: " . $sql . "' );</script>";

		//mysqli_query($conn, $sql);
	}


?>