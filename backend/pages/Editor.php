<!DOCTYPE html>
<html>
<head>
  <script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
  <script src="js/editor_script.js"></script>
</head>
    <body>
        <textarea id="editor">
            <?php
            $contetid = $_GET["loadcontenid"];
            $sql = "SELECT * FROM content_de WHERE SiteID='$contetid'";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                $sites = array();
                while ($row = mysqli_fetch_assoc($result)) {
                    array_push($sites, [$row["Content"]]);
                    echo $row["Content"];
                }
            }
            ?>
        </textarea>
        
        <br>
        <button id="savebutton" type="button">Save!</button>
    </body>
</html>