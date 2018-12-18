<!DOCTYPE html>
<html>
    <!-- Head of main page -->
    <head>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/medium-editor/5.23.3/css/themes/default.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/medium-editor/5.23.3/css/medium-editor.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/medium-editor-insert-plugin/2.5.0/css/medium-editor-insert-plugin.min.css" />

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/medium-editor/5.23.3/js/medium-editor.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.12/handlebars.runtime.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-sortable/0.9.13/jquery-sortable-min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/blueimp-file-upload/9.28.0/js/vendor/jquery.ui.widget.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/blueimp-file-upload/9.28.0/js/jquery.iframe-transport.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/blueimp-file-upload/9.28.0/js/jquery.fileupload.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/medium-editor-insert-plugin/2.5.0/js/medium-editor-insert-plugin.min.js"></script>
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