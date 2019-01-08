<?php

    require_once("../config.php");

    // Request to save layout data
    if (isset($_POST['pageTitle']))
    {
        // Assemble query string
        $sql = sprintf("UPDATE static_content_en SET content='%s' WHERE Tag='pageTitle';", $_POST['pageTitle']);
        $result = mysqli_query($conn, $sql);
        $sql = sprintf("UPDATE static_content_de SET content='%s' WHERE Tag='pageTitle';", $_POST['pageTitle']);
        $result = mysqli_query($conn, $sql);

        if ($result) {

            // Update successful
            echo "Success";
        }
    }
?>