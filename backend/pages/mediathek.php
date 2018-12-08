<h1>Mediathek</h1>
<div id="media-toolbar"></div>
<div id="media-container">

<?php
    $sql = "SELECT * FROM your_table WHERE your_conditions_here";
    $result = mysql_query($sql);
    
    while ($row = mysql_fetch_assoc($result)) {
?>
        <img src="<?php echo $row['your_image']; ?>" />
<?php  
    }
?>

    <div class="media" id="media-1"></div>
    <div class="media" id="media-2"></div>
    <div class="media" id="media-3"></div>
</div>