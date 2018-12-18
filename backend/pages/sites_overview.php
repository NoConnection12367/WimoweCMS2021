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
            // Function to check the string is ends  
            // with given substring or not 
            function endsWith($string, $endString) 
            { 
                $len = strlen($endString); 
                if ($len == 0) { 
                    return true; 
                } 
                return (substr($string, -$len) === $endString); 
            } 

            $sql = "SELECT * FROM site ORDER BY NavIndex";
            $result = mysqli_query($conn, $sql);
            if (mysqli_num_rows($result) > 0) {
                $sites = array();
                $isend = "";
                while ($row = mysqli_fetch_assoc($result)) {
                    array_push($sites, [$row["ID"], $row["Name"], $row["NavIndex"]]);
                    if(endsWith($row["NavIndex"],".1")) 
                        echo "<ol>"; 
                    elseif ($row["NavIndex"] != "1")
                        echo "</li>"; 
                    if (strpos($isend, ".") && !strpos($row["NavIndex"], "."))
                        echo "</ol></li>";
                    echo "<li id=\"siteid_" . $row["ID"] . "\"><div><a href=\"index.php?page=Editor&loadcontenid=" . $row["ID"] ."\">" . $row["Name"] . "</a></div>\n";
                    $isend = $row["NavIndex"];
                }
                if (strpos($isend, ".") && !strpos($row["NavIndex"], "."))
                    echo "</li></ol>";
                echo "</li>";
            }
            ?>
        </ol>
        </div>

        <br>
        <button id="savebutton" class="buttonStyle">Save!</button>
    </body>
</html>