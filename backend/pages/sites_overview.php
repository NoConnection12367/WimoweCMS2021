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
        <style>
            #dialog {
            display:none;
            }
        </style>
    </head>
    
    <body>
        <h1>Seitenverwalten</h1>
        <!-- Seitenauswahl -->
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
                    array_push($sites, [$row["ID"], $row["Name"], $row["NavIndex"], $row["Visible"], $row["TemplateID"]]);
                    if(endsWith($row["NavIndex"],".1")) 
                        echo "<ol>"; 
                    elseif ($row["NavIndex"] != "1")
                        echo "</li>"; 
                    if (strpos($isend, ".") && !strpos($row["NavIndex"], "."))
                        echo "</ol></li>";
                    echo "<li id=\"siteid_" . $row["ID"] . "\" class=\"visible_" . $row["Visible"] . " template_" . $row["TemplateID"] . "\"><div><a href=\"index.php?page=Editor&loadcontenid=" . $row["ID"] ."\">" . $row["Name"] . "</a><span class='editsite' style='float:right; cursor:pointer'  >Edit</span></div>\n";
                    $isend = $row["NavIndex"];
                }
                if (strpos($isend, ".") && !strpos($row["NavIndex"], "."))
                    echo "</li></ol>";
                echo "</li>";
            }
            ?>
        </ol>

        <br>
        <button id="savebutton" class="buttonStyle">Save!</button>
        <button id="createbutton" class="buttonStyle">Add new Site</button>
        <div hidden id="dialog_new" title="Add new Site">
            Enter Sitename:
            <input class="sitename_new" type="text" />
            <br>
            Enter Template ID:
            <input class="templateid_new" type="text" />
            <br>
            Is Visible?:
            <input class="isvisible_new" type="checkbox" />
            <br>
            <button class="newsitesaver">Save me!</button>
        </div>

        <div hidden id="dialog_edit" title="Edit Site">
            Enter Sitename:
            <input class="sitename" type="text" />
            <br>
            Enter Template ID:
            <input class="templateid" type="text" />
            <br>
            Is Visible?:
            <input class="isvisible" type="checkbox" />
            <br>
            <button class="editsitesaver">Save me!</button>
            <button class="editsitedelete">Delete me!</button>
            <p class="siteid" hidden></p>
        </div>
    </body>
</html>