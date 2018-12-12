<!DOCTYPE html>
<html>
    <!-- Head of main page -->
    <head>
        <script src="//cdn.jsdelivr.net/npm/medium-editor@latest/dist/js/medium-editor.min.js"></script>
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/medium-editor@latest/dist/css/medium-editor.min.css" type="text/css" media="screen" charset="utf-8">
        <script src="js/editor_script.js"></script>
    </head>

    <body>
        <!-- Contentauswahl -->
        <div id="editor_content" class="editable">
            <?php
            $contetid = $_GET["loadcontenid"];
            $sql = "SELECT * FROM content_de WHERE SiteID='$contetid'";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                $sites = array();
                while ($row = mysqli_fetch_assoc($result)) {
                    array_push($sites, [$row["ID"], $row["Content"]]);
                    echo $row["Content"];
                }
            }
            ?>
        </div>
        
        <br>
        <button id="savebutton" type="button">Save!</button>
    </body>
</html>