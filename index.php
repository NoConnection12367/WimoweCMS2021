<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Wimowe CMS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
</head>
<body>
<?php
    if (isset($_GET["page"])) 
    {
        $page = $_GET["page"];

        if (legitURL($page)) {

            if(is_file($folder_pages . '/' . $page . '.php'))
                include($folder_pages . '/' . $page . '.php');
            else
                include($folder_pages . '/default.php');
        }
        else
            include($folder_pages . '/default.php');
    }
    else
    {
        $page = "home";
        include($folder_pages . '/home.php');
    }
?>
</body>
</html>