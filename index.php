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
    ?>


    <!-- Body -->
    <body>

        <div id="backgroundContainer" class="container">

            <div id="header" class="container">
                <h1>Wimowe CMS 2021</h1>
            </div>

            <div id="navigation" class="container">
                <ul>
                    <?php
                        // Build Navigation from database
                        // Add a list item for each site, that should be displayed in the navigation bar
                        $sql = "SELECT * FROM wimowe.site WHERE Visible='1' ORDER BY NavIndex";
                        $result = mysqli_query($conn, $sql);

                        if (mysqli_num_rows($result) > 0) {
                            $sites = array();
                            while ($row = mysqli_fetch_assoc($result)) {
                                array_push($sites, [$row["NavIndex"], $row["Name"]]);
                                echo "<li navIndex='" . $row["NavIndex"] . "'><a href='?page=" . $row["Name"] . "'>" . $row["Name"] . "</a></li>\n";
                            }
                        }
                    ?>
                </ul>
            </div>

            <div id="content" class="container">

                <?php
                    // Get Content from database
                    //////////////////////////////

                    $folder_pages = "pages";

                    // Check if page request is set
                    if (isset($_GET["page"]))
                    {
                        $page = $_GET["page"];

                        // If requested page is existing, include it into content section of the current page
                        $sql = "SELECT * FROM wimowe.content_de WHERE Site='" . $page . "'";
                        $result = mysqli_query($conn, $sql);

                        if (mysqli_num_rows($result) > 0) {

                            // Content for requested site found, just take the first content and insert it into the page
                            if($row = mysqli_fetch_assoc($result)) {
                                echo $row["Content"];
                            }
                        }
                        else {
                            // No content found, display default error page
                            include($folder_pages . '/default.php');
                        }

                    }
                    else {
                        // No page specifically requested -> show home-page
                        $page = "home";
                        include($folder_pages . '/home.php');
                    }
                ?>
            </div>

            <div id="footer" class="container">
                <p>&copy; 2019 by Domi, Moe &amp; Flo</p>
            </div>

        </div>
    </body>
</html>