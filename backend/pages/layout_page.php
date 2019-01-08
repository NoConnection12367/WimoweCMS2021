
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
        }
    }
?>

<div id="layoutPageContainer">
    <h2>Layout & Farben</h2>
    <br>
    <h3>Farb-Templates:</h3>

    <div id="layoutTileContainer">

        <div id="layout1" class="layout <?php if ($cssPath == "css/style.1.css") echo "selected" ?>" cssPath="css/style.1.css"></div>
        <div id="layout2" class="layout <?php if ($cssPath == "css/style.2.css") echo "selected" ?>" cssPath="css/style.2.css"></div>
        <div id="layout3" class="layout <?php if ($cssPath == "css/style.3.css") echo "selected" ?>" cssPath="css/style.3.css"></div>
        <div id="layout4" class="layout <?php if ($cssPath == "css/style.4.css") echo "selected" ?>" cssPath="css/style.4.css"></div>

    </div>

    <div id="custom-css-props">
        <h3>Website-Titel:</h3>
        <input class="custom-prop" id="pageTitle" type="text" value='<?php echo $pageTitle; ?>' />

        <h3>Homepage-Titel-Schriftgröße:</h3>
        <input class="custom-prop" id="h1FontSize" type="text" value='<?php echo "\$h1FontSize"; ?>' />

        <h3>Seiten-Titel-Schriftgröße:</h3>
        <input class="custom-prop" id="h2FontSize" type="text" value='<?php echo "\$h2FontSize"; ?>' /> 

        <h3>Text-Schriftgröße:</h3>
        <input class="custom-prop" id="textFontSize" type="text" value='<?php echo "\$textFontSize"; ?>' />   
    
    </div>

    <button id="saveButton" class="buttonStyle">Speichern</button>

</div>