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
	if (isset($_POST['content']) && isset($_POST['siteid']) && isset($_POST['lang']))
	{
		$content = mysqli_real_escape_string($conn,$_REQUEST["content"]);
		$siteid = $_REQUEST["siteid"];
		$lang = $_REQUEST["lang"];

		$sql = "INSERT INTO content_" . $lang . " (Content, SiteID) VALUES ('" . $content . "', '" . $siteid . "')  ON DUPLICATE KEY UPDATE Content=\"$content\"";
		if (mysqli_query($conn, $sql)) {
			echo "Content wurde gespeichert.";
		} else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
	}

	//static_content saver (Sidebar, Footer)
	if (isset($_POST['content']) && isset($_POST['Tag']) && isset($_POST['lang']))
	{
		$content = mysqli_real_escape_string($conn,$_REQUEST["content"]);
		$siteid = $_REQUEST["Tag"];
		$lang = $_REQUEST["lang"];

		$sql = "INSERT INTO static_content_" . $lang . " (Content, Tag) VALUES ('" . $content . "', '" . $siteid . "')  ON DUPLICATE KEY UPDATE Content=\"$content\"";
		if (mysqli_query($conn, $sql)) {
			echo "Content wurde gespeichert.";
		} else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
	}

	//Save Site Navigation
	if (isset($_POST['IDArr']) && isset($_POST['NavIndexArr']))
	{
		$IDArr = $_REQUEST["IDArr"];
		$NavIndexArr = $_REQUEST["NavIndexArr"];

		for($i = 0; $i < sizeof($IDArr); $i++){
			$IDArr[$i];
			$NavIndexArr[$i];
			$sql = sprintf("UPDATE site SET NavIndex='%s' WHERE ID='%s'",$NavIndexArr[$i], $IDArr[$i]);

			if (mysqli_query($conn, $sql)) {
				echo "Content wurde gespeichert.";
			} else {
				echo "Error: " . $sql . "<br>" . mysqli_error($conn);
			}
		}
	}

	//Add new Site
	if (isset($_POST['SiteName_new']) && isset($_POST['templateid_new']) && isset($_POST['isvisible_new']))
	{
		$name = $_REQUEST["SiteName_new"];
		$template = $_REQUEST["templateid_new"];
		$isvisible = $_REQUEST["isvisible_new"];

		//Get highest NavIndex
		$higestNavinDB = "SELECT `NavIndex` FROM site ORDER BY NavIndex DESC LIMIT 1";
		$result = mysqli_query($conn, $higestNavinDB);
		$row = mysqli_fetch_assoc($result);
		$Navindex = (int)$row ["NavIndex"];
		$Navindex++;
		$sql = sprintf("INSERT INTO `site`(`Name`, `NavIndex`, `TemplateID`, `Visible`, `Creator`) VALUES ('%s','%d','%s', %d,'Peter')",$name, $Navindex, $template, $isvisible);
		if (mysqli_query($conn, $sql)) {
			echo "Content wurde gespeichert.";
		} else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
	}

	//Update existence Site
	if (isset($_POST['SiteName']) && isset($_POST['templateid']) && isset($_POST['isvisible']) && isset($_POST['siteid']))
	{
		$name = $_REQUEST["SiteName"];
		$template = $_REQUEST["templateid"];
		$isvisible = $_REQUEST["isvisible"];
		$ID = $_REQUEST["siteid"];

		$sql = sprintf("UPDATE site SET Name='%s', Visible='%d', TemplateID='%d' WHERE ID='%s'" ,$name, $isvisible, $template, $ID);
		if (mysqli_query($conn, $sql)) {
			echo "Content wurde gespeichert.";
		} else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
	}

	//Delete Site
	if (isset($_POST['delete']) && isset($_POST['siteid']))
	{
		$ID = $_REQUEST["siteid"];

		$sql = sprintf("DELETE FROM `site` WHERE `ID`=%d", $ID);
		if (mysqli_query($conn, $sql)) {
			echo "Content wurde gelöscht.";
		} else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
	}

?>