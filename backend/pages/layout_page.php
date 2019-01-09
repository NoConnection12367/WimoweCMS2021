
<?php
    // Check if user is allowed to view this page
    if (permissionLevel() < 15) {
        include("permission_denied.php");
        return;
    }
?>

<head>
    <link rel="stylesheet" type="text/css" href="css/layout_page.css">
    <script src="js/layout_page_script.js"></script>
</head>

<?php

    // Get page title from database
    $sql = "SELECT content FROM static_content_de WHERE Tag='pageTitle'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {

        while ($row = mysqli_fetch_assoc($result)) {
            $pageTitle = $row["content"];
        }
    }

    // Get layout definitions from database
    $sql = "SELECT * FROM layout WHERE ID='1'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {

        if ($row = mysqli_fetch_assoc($result)) {
            $cssPath = $row["cssPath"];
            $websiteFontSize = $row["WebsiteFontSize"];
            $siteFontSize = $row["SiteFontSize"];
            $textFontSize = $row["TextFontSize"];
            $fontFamily = $row["FontFamily"];
        }
    }
?>

<div id="layoutPageContainer">
    <h2>Layout & Farben</h2>
    <br>
    <h3>Farb-Templates:</h3>

    <div id="layoutTileContainer">

        <div class="layout <?php if ($cssPath == "css/style.css") echo "selected" ?>" cssPath="css/style.css"><div class="layoutTileBackground" id="layout1"></div></div>
        <div class="layout <?php if ($cssPath == "css/style_flower.css") echo "selected" ?>" cssPath="css/style_flower.css"><div class="layoutTileBackground" id="layout2"></div></div>
        <div class="layout <?php if ($cssPath == "css/style_business.css") echo "selected" ?>" cssPath="css/style_business.css"><div class="layoutTileBackground" id="layout3"></div></div>
        <div class="layout <?php if ($cssPath == "css/style_hexdark.css") echo "selected" ?>" cssPath="css/style_hexdark.css"><div class="layoutTileBackground" id="layout4"></div></div>

    </div>

    <div id="custom-css-props">
        <h3>Website-Titel:</h3>
        <input class="custom-prop" id="pageTitle" type="text" value='<?php echo $pageTitle; ?>' />

        <h3>Website-Titel-Schriftgröße:</h3>
        <input class="custom-prop" id="websiteFontSize" type="text" value='<?php echo $websiteFontSize; ?>' />

        <h3>Seiten-Titel-Schriftgröße:</h3>
        <input class="custom-prop" id="siteFontSize" type="text" value='<?php echo $siteFontSize; ?>' /> 

        <h3>Text-Schriftgröße:</h3>
        <input class="custom-prop" id="textFontSize" type="text" value='<?php echo $textFontSize; ?>' /> 

        <h3>Schriftart:</h3>
        <input class="custom-prop" id="fontFamily" type="text" value='<?php echo $fontFamily; ?>' />   
    
    </div>

    <button id="saveButton" class="buttonStyle">Speichern</button>

</div>