<!DOCTYPE html>
<html>
    <!-- Head of main page -->
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Wimowe CMS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
        crossorigin="anonymous"> -->
        <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />

        
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/main.js"></script>
    </head>

    <?php
        // Connect to sql database

        // Define constants
        $servername = "localhost";
        $username = "root";
        $password = "";

        // Create connection
        $conn = mysqli_connect($servername, $username, $password);

        // Check connection
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
        else
        {
            mysqli_set_charset($conn,"utf8");
            mysqli_select_db ($conn, "wimowe");
        }

        // Start session, set language to german by default
        session_start();

        if (!isset($_SESSION["selectedLanguage"])) {
            $_SESSION["selectedLanguage"] = "Deutsch";
        }

        if ($_SESSION["selectedLanguage"] == "Deutsch") {
            $static_content = "static_content_de";
            $content = "content_de";
        }
        else {
            $static_content = "static_content_en";
            $content = "content_en";
        }

    ?>


    <!-- Body -->
    <body>

        <div id="backgroundContainer">

            <div id="header" class="container">
                <?php
                    // Load page title from database
                    $sql = "SELECT * FROM " . $static_content . " WHERE Tag='pageTitle'";
                    $result = mysqli_query($conn, $sql);

                    if (mysqli_num_rows($result) > 0) {
                        if ($row = mysqli_fetch_assoc($result)) {
                            echo $row["Content"];
                        }
                    }
                ?>
            </div>

            <div id="navigation">
                <ul>
                    <?php
                        // Build Navigation from database
                        // Add a list item for each site, that should be displayed in the navigation bar
                        $sql = "SELECT * FROM site WHERE Visible='1' ORDER BY NavIndex";
                        $result = mysqli_query($conn, $sql);

                        if (mysqli_num_rows($result) > 0) {
                            $sites = array();
                            while ($row = mysqli_fetch_assoc($result)) {
                                array_push($sites, [$row["NavIndex"], $row["Name"]]);
                                echo "<li navIndex='" . $row["NavIndex"] . "'><a href='?page=" . $row["Name"] . "'>" . $row["Name"] . "</a></li>\n";
                            }
                        }
                    ?>
                    <li class="dropdown languageSelector">
                        <a class="dropbtn">Sprache</a>
                        <ul class="dropdown-content">
                            <li><a href="javascript:void(0)" class="languageSelectorButton" value="Deutsch">Deutsch</a></li>
                            <li><a href="javascript:void(0)" class="languageSelectorButton" value="Englisch">Englisch</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="container content">

                <?php
                    // Get Template from database
                    //////////////////////////////

                    $folder_pages = "pages";

                    // Check if page request is set
                    if (!isset($_GET["page"]))
                    {
                        // No specific page requested, show home-page
                        $page = "home";
                    }
                    else
                    {
                        $page = $_GET["page"];
                    }

                    // Check if requested site is existing
                    $sql = "SELECT * FROM site LEFT JOIN Template ON site.TemplateID = Template.ID WHERE Name='" . $page . "'";
                    $result = mysqli_query($conn, $sql);

                    if (mysqli_num_rows($result) > 0) {
                        // Site found

                        if($row = mysqli_fetch_assoc($result)) {

                            // Include template
                            include($row["Path"]);
                        }
                    }
                    else {
                        // No content found, display default error page
                        include($folder_pages . '/default.php');
                    }
                ?>
            </div>

            <div id="footer" class="container">
                <?php
                    // Load footer content from database
                    $sql = "SELECT * FROM " . $static_content . " WHERE Tag='footer'";
                    $result = mysqli_query($conn, $sql);

                    if (mysqli_num_rows($result) > 0) {
                        if ($row = mysqli_fetch_assoc($result)) {
                            echo $row["Content"];
                        }
                    }
                ?>
            </div>

        </div>
    </body>
</html>