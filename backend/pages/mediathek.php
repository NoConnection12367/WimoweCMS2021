<?php 	
	//error_reporting(0);
	require_once ("config.php");
	//require_once ("functions.php"); 
?>
<h1>Mediathek</h1>
<div id="media-toolbar"></div>
<div id="media-container">

<?php
    $sql = "SELECT * FROM media";
    $result = mysqli_query($conn, $sql);
    $i = 0;

    while ($row = mysqli_fetch_assoc($result)) {

        $i++;
        $cssType = $i%2 ? 'odd':'even';

?>
        <div class="media <?php echo $cssType; ?>" id="media-<?php echo $row['ID']; ?>">
            <div class="media-imgContainer">
            
<?php

            switch ($row['Format']) {
                case 'image':
                    echo '<img src="'. $row['Path'] . '"/>';
                    break;
                case 'video':
                    echo '
                    <video controls poster="'. $row['Path'] . '">
                        <source src="'. $row['Path'] . '" type="video/mp4">
                    </video>';
                    break;
                case 'pdf':
                    echo '<i class="far fa-file-pdf"></i>';
                    break;
                default:
                    echo '<i class="fas fa-exclamation-triangle"></i>';
                    break;
            }
?>
            </div>
            <div class="media-infos">
                <div class="media-titel">Titel: <?php echo $row['Titel']; ?></div>
                <div class="media-autor">Autor: <?php echo $row['Autor']; ?></div>
                <div class="media-datum">Datum: <?php echo $row['Datum']; ?></div>
            </div>
            <div class="media-delBtn"><i class="fas fa-trash-alt"></i></div>
        </div>     
<?php  
    }
?>
</div>



<!--

<?php
/*    $sql = "SELECT * FROM media WHERE your_conditions_here";
    $result = mysql_query($sql);
    
    while ($row = mysql_fetch_assoc($result)) {
?>
        <img src="<?php echo $row['your_image']; ?>" />
<?php  
    }*/
?>

    <div class="media" id="media-1"></div>
    <div class="media" id="media-2"></div>
    <div class="media" id="media-3"></div>
</div>
-->