<?php

    require_once("../config.php");

    // Request to delete a user
    if (isset($_POST['username']))
    {
        // Assemble query string
        $sql = sprintf("DELETE FROM user WHERE Username='%s';", $_POST['username']);
        $result = mysqli_query($conn, $sql);

        if ($result) {

            // Deleting successful
            echo "Success";
        }
    }
?>