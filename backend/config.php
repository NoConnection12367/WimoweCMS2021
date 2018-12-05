<?php 
	$folder_pages = "pages";

	// SQL-Server - phpmyadmin
	 	
	$db_host			= "";
	$db_user			= "";
	$db_passwd			= "";
	$db_name			= "";

	// Verbindung zur DB herstellen
	@$connection = new mysqli($db_host, $db_user, $db_passwd, $db_name);
?>