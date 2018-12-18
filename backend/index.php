<?php 	
	//error_reporting(0);
	require_once ("config.php");
	require_once ("functions.php"); 
?>
<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8" />
        <!--meta http-equiv="X-UA-Compatible" content="IE=edge"-->
        <title>Wimowe CMS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="css/rights_management.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="css/login_page.css" />
        <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
        <link rel="shortcut icon" type="image/x-icon" href="ico.ico" />
        <script src="js/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <div class="wrapper">   
            <div id="header">
                <p>CMS Konfigurator</p>
                <i class="fas fa-user user-icon"></i>
            </div>

        </div>
        <div id="navigation">
            <ul>
                <li><i class="fas fa-search"></i><a href="index.php?page=preview">Vorschau</a></li>
                <li><i class="far fa-file-alt"></i><a href="index.php?page=sites_overview">Seiten verwalten</a></li>
                <li><i class="far fa-images"></i><a href="index.php?page=mediathek">Mediathek</a></li>
                <li><i class="fas fa-palette"></i><a href="index.php?page=">Layout & Farben</a></li>
                <li><i class="fas fa-users-cog"></i><a href="index.php?page=rights_management">Rechteverwaltung</a></li>
            </ul>
            <i class="fas fa-angle-double-right toggle-nav" id="toggle-right"></i>
            <i class="fas fa-angle-double-left toggle-nav" id="toggle-left"></i>
        </div>
        <div class="wrapper">
            <div id=content>

            <?php
                // TODO: Remove to activate permission system!
                $_SESSION["activeUser"] = "Admin";

                // Check if a user is logged in already
                if (isset($_SESSION["activeUser"]))
                {
                    if (isset($_GET["page"]))
                    {
                        $page = $_GET["page"];

                        if(is_file($folder_pages . '/' . $page . '.php'))
                            include($folder_pages . '/' . $page . '.php');
                        else
                            include($folder_pages . '/default.php');
                    }
                    else
                    {
                        $page = "preview";
                        include($folder_pages . '/' . $page . '.php');
                    }
                }
                else
                {
                    // User is not logged in, load login page
                    include($folder_pages . '/login_page.php');
                }
                
			?>
                
            </div>
            
        </div>
        <script src="js/script.js"></script>
    </body>
</html>