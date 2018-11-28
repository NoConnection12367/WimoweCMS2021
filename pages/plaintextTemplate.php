


<div id="content">
    <?php

        // Get content of requested site
        $sql = "SELECT * FROM content_de LEFT JOIN site ON content_de.SiteID = site.ID WHERE Name='" . $page . "'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
            // Site found

            while($row = mysqli_fetch_assoc($result)) {
                echo $row["Content"];
            }
        }
    ?>
</div>