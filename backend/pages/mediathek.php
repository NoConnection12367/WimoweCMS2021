<h1>Mediathek</h1>
<div id="media-toolbar">
    <form id="form-media-upload" action="functions.php" method="post" enctype="multipart/form-data">
        <input id="media-searchBtn" type="file" name="fileToUpload">
        <input id="media-uploadBtn" type="submit" value="+ Upload" name="submit">
    </form>
</div>
<div id="media-container">

<?php
    $sql = "SELECT * FROM media";     // WHERE entfernen nach testen
    $result = mysqli_query($conn, $sql);
    $i = 0;

    while ($row = mysqli_fetch_assoc($result)) {

        $i++;
        $cssType = $i % 2 ? 'odd':'even';

?>
        <div class="media <?php echo $cssType; ?>" id="media-<?php echo $row['ID']; ?>">
            <div class="media-imgContainer">
            
<?php
            $pattern_image = "/(image)\/(.*)/";
            $pattern_video = "/(video)\/(.*)/";
            $pattern_pdf = "/application\/pdf/";

            if ( preg_match($pattern_image, $row['Format']) != "") {
                echo '<img src="'. $row['Path'] . '"/>';
            }

            elseif (preg_match($pattern_video, $row['Format']) != "") {
                echo '<video controls>
                        <source src="'. $row['Path'] . '" type="video/mp4">
                    </video>';
            }

            elseif (preg_match($pattern_pdf, $row['Format']) != "") {
                echo '<i class="far fa-file-pdf"></i>';
            }

            else {
                echo '<i class="fas fa-exclamation-triangle"></i>';
            }
            
?>
            </div>
            <div class="media-infos">
                <div class="media-titel">Titel: <?php echo $row['Titel']; ?></div>
                <div class="media-autor">Autor: <?php echo $row['Autor']; ?></div>
                <div class="media-datum">Datum: <?php echo $row['Datum']; ?></div>
            </div>
            <div class="media-delBtn" value="<?php echo $row['ID']; ?>"><i class="fas fa-trash-alt"></i></div>
        </div>     
<?php  
    }
?>
</div>