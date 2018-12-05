
<div class="content">

    <div id="sidebarRight">
        <?php

            // Get content of requested site
            $sql = "SELECT * FROM content_de LEFT JOIN site ON content_de.SiteID = site.ID WHERE Name='" . $page . "' AND Tag='sidebar'";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                // Site found

                while($row = mysqli_fetch_assoc($result)) {
                    echo $row["Content"];
                }
            }
        ?>
    </div>
    
    <div id="contentLeftToSidebar">
        <div id="picture">
            <?php

                // Get content of requested site
                $sql = "SELECT * FROM content_de LEFT JOIN site ON content_de.SiteID = site.ID WHERE Name='" . $page . "' AND Tag='picture'";
                $result = mysqli_query($conn, $sql);

                if (mysqli_num_rows($result) > 0) {
                    // Site found

                    while($row = mysqli_fetch_assoc($result)) {
                        echo "<img src='" . $row["Content"] . "' alt=''>";
                    }
                }
            ?>
        </div>

        <div id="text">
            <?php

                // Get content of requested site
                $sql = "SELECT * FROM content_de LEFT JOIN site ON content_de.SiteID = site.ID WHERE Name='" . $page . "' AND Tag='text'";
                $result = mysqli_query($conn, $sql);

                if (mysqli_num_rows($result) > 0) {
                    // Site found

                    if($row = mysqli_fetch_assoc($result))
                    {
                        echo "<h2>" . $row["Name"] . "</h2>";
                    }

                    do {
                        echo $row["Content"];
                    }
                    while ($row = mysqli_fetch_assoc($result));
                }
            ?>
        </div>
    </div>
    
</div>