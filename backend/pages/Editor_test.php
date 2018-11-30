<!DOCTYPE html>
<html>
    <!-- Head of main page -->
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Wimowe CMS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script src="//cdn.jsdelivr.net/npm/medium-editor@latest/dist/js/medium-editor.min.js"></script>
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/medium-editor@latest/dist/css/medium-editor.min.css" type="text/css" media="screen" charset="utf-8">

        <script src="../../js/jquery-3.3.1.min.js"></script>
        <script src="../js/editor_script.js"></script>
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
    } else {
        mysqli_set_charset($conn, "utf8");
        mysqli_select_db($conn, "wimowe");
    }
    ?>
    <body>

        <!-- Seitenauswahl -->
        <div>
        <select id="select_option">
            <?php
            $sql = "SELECT * FROM site";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                $sites = array();
                while ($row = mysqli_fetch_assoc($result)) {
                    array_push($sites, [$row["ID"], $row["Name"]]);
                    echo "<option value=\"" . $row["ID"] . "\">" . $row["Name"] . "</option>\n";
                }
            }
            ?>
        </select>
        </div>

        <!-- Contentauswahl -->
        <div>
        <select id="get_content">
        <option value ="new_content">Neuer Eintrag</option>
            <?php
            $sql = "SELECT * FROM content_de";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                $sites = array();
                while ($row = mysqli_fetch_assoc($result)) {
                    array_push($sites, [$row["ID"], $row["Content"]]);
                    echo "<option value=\"" . $row["ID"] . "\">" . $row["Content"] . "</option>\n";
                }
            }
            ?>
        </select>
        </div>

        <br>
        <div id="editor_content" class="editable"></div>
        <br>
        <button id="savebutton" type="button">Save!</button>
    </body>
</html>