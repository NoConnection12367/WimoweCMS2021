
<div class="content">

    <div id="sidebar">
        <?php

            // Get content of requested site
            $sql = "SELECT * FROM " . $static_content . " WHERE Tag='sidebar'";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                // Site found

                while($row = mysqli_fetch_assoc($result)) {
                    echo $row["Content"];
                }
            }
        ?>
    </div>
    
    <div id="contentRightToSidebar">
        <div id="text">
            <?php

                // Get content of requested site
                $sql = "SELECT * FROM " . $content . " LEFT JOIN site ON " . $content . ".SiteID = site.ID WHERE Name='" . $page . "'";
                $result = mysqli_query($conn, $sql);

                if (mysqli_num_rows($result) > 0) {
                    // Site found

                    if($row = mysqli_fetch_assoc($result))
                    {
                        echo "<h2>" . $row["Name"] . "</h2>";
                        echo $row["Content"];
                    }
                }
            ?>
        </div>
    </div>
    
</div>