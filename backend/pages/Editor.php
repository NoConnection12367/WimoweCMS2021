<!DOCTYPE html>
<html>
<head>
<script src="https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=n2yqdup7pvd1jnfp3hz23imu9p1pe6kny0ft4ds3bf37dkqo"></script> 
  <script src="js/editor_script.js"></script>
</head>
    <body>
        <h1>
            <?php
            $contetid = $_GET["loadcontenid"];
            $sql = "SELECT * FROM site WHERE ID='$contetid'";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                $sites = array();
                while ($row = mysqli_fetch_assoc($result)) {
                    array_push($sites, [$row["Name"]]);
                    echo $row["Name"];
                }
            }
            ?>
        </h1>

        <select id="langselect" style="width:100%">
            <option value="de">Deutsch</option>
            <option value="en">English</option>
        </select> 

        <textarea id="editor">
            <?php
            $contetid = $_GET["loadcontenid"];
            $lang = $_GET["lang"];
            $sql = "SELECT * FROM content_". $lang . " WHERE SiteID='$contetid'";
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

        <button id="savebutton" class="buttonStyle" type="button">Save!</button>
    </body>
</html>