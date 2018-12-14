<!DOCTYPE html>
<html>
    <!-- Head of main page -->
    <head>
        <link rel="stylesheet" type="text/css" href="css/list_style.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/nestedSortable/2.0.0/jquery.mjs.nestedSortable.min.js"></script>
        <script src="js/site_overview_script.js"></script>
    </head>
    
    <body>
        <!-- Seitenauswahl -->
        <div class="wrapper">
        <ol class="sortable">
            <?php
            $sql = "SELECT * FROM site ORDER BY NavIndex";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                $sites = array();
                while ($row = mysqli_fetch_assoc($result)) {
                    array_push($sites, [$row["ID"], $row["Name"]]);
                    echo "<li id=\"siteid_" . $row["ID"] . "\"><div><a href=\"http://localhost/WimoweCMS2021/backend/index.php?page=Editor&loadcontenid=" . $row["ID"] ."\">" . $row["Name"] . "</a></div></li>\n";
                }
            }
            ?>
        </ol>
        </div>

        <br>
        <button id="savebutton" class="buttonStyle">Save!</button>
    </body>
</html>