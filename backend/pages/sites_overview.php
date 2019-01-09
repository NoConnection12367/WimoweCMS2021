<!DOCTYPE html>
<html>
    <!-- Head of main page -->
    <head>
        <link rel="stylesheet" type="text/css" href="css/sites_overview.css">
        <!--link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/nestedSortable/2.0.0/jquery.mjs.nestedSortable.min.js"></script>
        <script src="js/site_overview_script.js"></script>
        <style>
            #dialog {
            display:none;
            }
        </style>
    </head>
    
    <body>
        <div class="rightManagementContainer" style="max-width:500px">
        <h1>Seiten verwalten</h1>
        <!-- Seitenauswahl -->
        <div id="siteList">
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
                        echo "<li id=\"siteid_" . $row["ID"] . "\" class=\"visible_" . $row["Visible"] . " template_" . $row["TemplateID"] . "\"><div class='listItem'><a class='siteName' href=\"index.php?page=Editor&loadcontenid=" . $row["ID"] ."&lang=de\">" . $row["Name"] . "</a><a class='editsite'><i class='fas fa-edit'></i></a></div>\n";
                        $isend = $row["NavIndex"];
                    }
                    if (strpos($isend, ".") && !strpos($row["NavIndex"], "."))
                        echo "</li></ol>";
                    echo "</li>";
                }
                ?>
            </ol>
        </div>

        <button id="createbutton" class="buttonStyle">Neue Seite hinzufügen</button>
        <button id="sidebarbutton" class="buttonStyle">Sidebar editieren</button>
        <button id="footerbutton" class="buttonStyle">Footer editieren</button>
        <button style="float:right" id="savebutton" class="buttonStyle">Speichern</button>
        </div>
        <div hidden id="dialog_new" title="Neue Seite hinzufügen">
            Seitenname:
            <input class="inputStyle sitename_new" type="text" />
            <br><br>
            Template:
            <select class="templateid_new">
                <?php
                    $sql = "SELECT * FROM template ORDER BY ID";
                    $result = mysqli_query($conn, $sql);

                    if (mysqli_num_rows($result) > 0) {

                        while($row = mysqli_fetch_assoc($result)) {
                            echo "<option value='" . $row["ID"] . "'>" . $row["TemplateName"] . "</option>";
                        }
                    }
                ?>
            </select> 

            <br><br>
            In Navigation einbinden:
            <input class="isvisible_new" type="checkbox" />
            <br>
            <button class="buttonStyle newsitesaver">Neue Seite erstellen</button>
        </div>

        <div hidden id="dialog_edit" title="Seite bearbeiten">
            Seitenname:
            <input class="inputStyle sitename" type="text" />
            <br><br>
            Template:
            <select class="templateid">
                <?php
                    $sql = "SELECT * FROM template ORDER BY ID";
                    $result = mysqli_query($conn, $sql);

                    if (mysqli_num_rows($result) > 0) {

                        while($row = mysqli_fetch_assoc($result)) {
                            echo "<option value='" . $row["ID"] . "'>" . $row["TemplateName"] . "</option>";
                        }
                    }
                ?>
            </select> 
            <br><br>
            In Navigation einbinden:
            <input class="isvisible" type="checkbox" />
            <br>
            <button class="buttonStyle editsitesaver">Speichern</button>
            <button class="buttonStyle editsitedelete">Abbrechen</button>
            <p class="siteid" hidden></p>
        </div>
    </body>
</html>