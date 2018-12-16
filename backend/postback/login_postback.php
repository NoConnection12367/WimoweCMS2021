<?php

    require_once("../config.php");

    if (isset($_POST['username']) && isset($_POST['password'])) {
        
        // Check if username exists and password is correct
        $sql = sprintf("SELECT * FROM user WHERE Username='%s';", $_POST['username']);
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {

            // User found, check password
            if ($row = mysqli_fetch_assoc($result)) {
                if (hash("sha256", $_POST['password'], false) == $row["PasswordHash"])
                {
                    // Password matches, create session variable
                    $_SESSION["activeUser"] = $row["Username"];
                    echo "Success";
                }
                else
                {
                    // Wrong password, return errormessage
                    echo "Benutzername oder Passwort falsch!";
                }
            }
        }
        else
        {
            // User not found, return errormessage
            echo "Benutzername oder Passwort falsch!";
        }

    }
    
?>