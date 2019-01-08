<?php

    require_once("../config.php");

    // Request to save layout data
    if (isset($_POST['pageTitle']) ||
    isset($_POST['cssPath']) ||
    isset($_POST['websiteFontSize']) || 
    isset($_POST['siteFontSize']) || 
    isset($_POST['textFontSize']) || 
    isset($_POST['fontFamily']))
    {
        // Assemble query string
        $sql = sprintf("UPDATE static_content_en SET content='%s' WHERE Tag='pageTitle';", $_POST['pageTitle']);
        $result = mysqli_query($conn, $sql);
        $sql = sprintf("UPDATE static_content_de SET content='%s' WHERE Tag='pageTitle';", $_POST['pageTitle']);
        $result = mysqli_query($conn, $sql);

        $sql = "UPDATE layout SET cssPath='" . $_POST['cssPath'] . "', WebsiteFontSize=" . $_POST['websiteFontSize'] .", SiteFontSize=" . $_POST['siteFontSize'] .", TextFontSize=" . $_POST['textFontSize'] .", FontFamily='" . $_POST['fontFamily'] . "'";
        $result = mysqli_query($conn, $sql);
    }
?>