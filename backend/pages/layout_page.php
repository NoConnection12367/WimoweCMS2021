
<head>
    <link rel="stylesheet" type="text/css" href="css/layout_page.css">
    <script src="js/layout_page_script.js"></script>
</head>

<?php

    $sql = "SELECT content FROM static_content_de WHERE Tag='pageTitle'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {

        while ($row = mysqli_fetch_assoc($result)) {
            $pageTitle = $row["content"];
        }
    }
?>

<div id="layoutPageContainer">
    <h2>Layout & Farben</h2>
    <br>
    <h3>Farb-Templates:</h3>

    <div id="layoutTileContainer">

        <div id="layout1" class="layout"></div>
        <div id="layout2" class="layout"></div>
        <div id="layout3" class="layout"></div>

    </div>

    <h3>Website-Titel:</h3>
    <input id="pageTitle" type="text" value='<?php echo $pageTitle; ?>' />

    <button id="saveButton" class="buttonStyle">Speichern</button>

</div>